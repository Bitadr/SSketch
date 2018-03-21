// Ken Eguro
//		Version 1.1 - 8/1/11
`timescale 1ns / 1ps

// To perform the test:
// - Create a new ModelSim library (generally 'work') with this file and the other SIRC HW source files in it
//	- If not already done, import the Xilinx libraries (****need to fill in details as to how to do this)
// - Add the glbl.v file to the work library.  This file is in %XILINXROOT\ISE\verilog\src\
// - Copy the file vpi2ether.dll locally
//	- Start the simulation using the transcript window with:
//			vsim -L secureip -L simprims_ver -L unimacro_ver -L unisims_ver -L xilinxcorelib_ver work.glbl work.system -pli vpi2ether.dll
//	- (optional) Add interesting signals into waveform viewer
// - Run the simulation in ModelSim (e.g. run -all).
// - Run the SW Example
// - Stop/kill/debug as appropriate :-)
`default_nettype none

module system #(
	//************ Input and output block memory parameters
	//The user's circuit communicates with the input and output memories as N-byte chunks
	//These should be defined as {1, 2, 4, 8, 16, 32} corresponding to an 8, 16, 32, 64, 128, or 256-bit interface.
	//If this value is changed, reflect the changes in the input/output memory .xco and regenerate the core.
	//Note that if more than 1 byte is used by the user, the organization of the bytes are little endian.  For example if N=4,
	// address 32-bit word 0 = {b3:b2:b1:b0}
	// address 32-bit word 1 = {b7:b6:b5:b4}...
	parameter INMEM_USER_BYTE_WIDTH = 1,
	parameter OUTMEM_USER_BYTE_WIDTH = 1,
	//How many address lines are required by the input and output buffers?
	//Stated another way, the "BYTE_WIDTH" parameter determined the width of the words,
	// the "ADDRESS_WIDTH" parameter determines the 2^M word height of buffer.
	//If this value is changed, reflect the changes in the input/output memory .xco and regenerate the core.
	parameter INMEM_USER_ADDRESS_WIDTH = 17,
	parameter OUTMEM_USER_ADDRESS_WIDTH = 13,
	//Was the input memory generated with the "Register Port B Output of Memory Core" box checked?
	//This should be 0 if not, 1 if so.  If this value is changed, reflect the modification in the
	// input memory .xco and regenerate the core.  Technically, it is also possible to account for selecting the
	// "Register Port B Output of Memory Primitives" option.  Either way, the value of this parameter should be equal 
	//		to the value reported by COREGen in the "Latency Added by Output register(s)", "Port B:" field.
	parameter INMEM_USER_REGISTER = 1,
	//What MAC address should the FPGA use?
	//This value is set within the project and does *not* require regeneration of the ethernet core.
	parameter MAC_ADDRESS = 48'hAAAAAAAAAAAA
)();
	//Signals for the board-level IO
	reg       	clock;
	//*****Don't need a reset signal since this is a physical button on the board
	//The board can be "soft" reset by sending a reset command from the host PC
	reg	    	RESET;				// Active low reset from board-level button - resets everything on the board

	//Signals to/from virtual MAC
	wire	[7:0]		rx_data_in;
	wire       		rx_valid, rx_error;
	wire 	[7:0] 	tx_data_out;
	wire       		tx_error;
	wire        	tx_enable;
	wire        	eth_clock;
	wire        	eth_reset;

	wire	[7:0]		LED;					//8 optional LEDs for visual feedback & debugging

	//Internal signals
	reg        		design_error = 0;
	integer    		length = 0;

	//Signals to/from ethernet controller
	reg  [7:0]		rx_data_in_reg;
	reg  [7:0]  	rx_data_in_reg2;
	reg       		rx_ll_src_rdy_in_reg;
	reg       		rx_ll_src_rdy_in_reg2;
	reg        		rx_ll_sof_in;
	reg        		rx_ll_sof_in_reg;
	reg        		rx_ll_sof_in_reg2;
	reg        		rx_ll_eof_in;
	reg        		rx_ll_eof_in_reg;

	wire      		tx_ll_src_rdy_out;
	wire        	tx_ll_eof_out;
	reg				tx_ll_dst_rdy_in;
	reg	[1:0]		packetSpacing;

	//Signals to the user logic
	wire				userLogicReset;														//Reset for the user-side logic.  Will be asserted when the reset for the controller is asserted
																									//		or when the controller receives a soft reset command over the ethernet.
																									//A user application can only check the status of the run register and reset it to zero
	wire 				userRunValue;															//Run register value
	wire 				userRunClear;															//Does the user circuit want to reset the run register? (active high)

	//User interface to parameter register file
	wire				register32CmdReq;														//Parameter register handshaking request signal
	wire				register32CmdAck;														//Parameter register handshaking acknowledgment signal
	wire	[31:0] 	register32WriteData;													//Parameter register write data
	wire 	[7:0] 	register32Address;													//Parameter register address
	wire 				register32WriteEn;													//Parameter register write enable
	wire				register32ReadDataValid;											//Indicates that a read request has returned with data
	wire 	[31:0] 	register32ReadData;													//Parameter register read data

	//User interface to input memory
	wire 														inputMemoryReadReq;			//Input memory handshaking request signal
	wire														inputMemoryReadAck;			//Input memory handshaking acknowledgment signal
	wire	[(INMEM_USER_ADDRESS_WIDTH - 1):0] 		inputMemoryReadAdd;			//Input memory read address line
	wire 														inputMemoryReadDataValid;	//Indicates that a read request has returned with data
	wire	[((INMEM_USER_BYTE_WIDTH * 8) - 1):0] 	inputMemoryReadData;			//Input memory read data line

	//Output memeory connections
	wire 														outputMemoryWriteReq;		//Output memory handshaking request signal
	wire 														outputMemoryWriteAck;		//Output memory handshaking acknowledgment signal
	wire	[(OUTMEM_USER_ADDRESS_WIDTH - 1):0] 	outputMemoryWriteAdd;		//Output memory write address line
	wire	[((OUTMEM_USER_BYTE_WIDTH * 8) - 1):0] outputMemoryWriteData;		//Output memory write data line
	wire 	[(OUTMEM_USER_BYTE_WIDTH - 1):0]			outputMemoryWriteByteMask;	//Output memory write byte mask
  
	initial begin
		clock = 1;   

		// Instantiate Ethernet macro
		$display("Instantiating Ethernet module..");
		$EthernetPlugin(
			//Inputs to the Ethenet module
			MAC_ADDRESS,    //MAC address to filter unicast packets
			eth_reset,		//reset (active low)
			eth_clock,		//clock output
			tx_data_out,	//TX data output
			tx_enable,		//TX enable output
			tx_error,		//TX error output
			//Outputs from the Ethernet module
			rx_data_in,		//RX data input
			rx_valid,		//RX data valid input
			rx_error		//RX error input
		);
	end
	always #1 clock = ~clock;

	initial begin
		rx_data_in_reg = 0;
		rx_ll_sof_in = 1;
		rx_ll_eof_in = 1;
		tx_ll_dst_rdy_in = 0;
	end  
  
	//****Don't need these signals
	assign eth_clock = (design_error) ? 0 : clock;
	assign eth_reset = (design_error) ? 0 : 1;
	assign tx_error  = design_error;

	//Data to/from virtual MAC
	always @(negedge eth_clock) begin
		assign rx_ll_eof_in = 1;
		if (rx_valid == 1) begin
			if(length == 0) begin
				rx_ll_sof_in <= 0;
				length = length + 1;
			end
			else begin
				rx_ll_sof_in <= 1;
				length = length + 1;
				//$display("rx data: %x len %u", rx_data_in, length);
			end
		end
		else begin
			if (length > 0) begin
				assign rx_ll_eof_in = 0;
				//$display("rxlen %d", length);
				length = 0;
			end
		end
	end

	//Signals to ethernet controller
	//Modelsim apparently schedules values coming from the PLI to change at or before 
	// the clock edge.  In any case, the code here sees the new values not the old ones.
	// Thus, we have to register values coming directly from the PLI twice to make 
	// certain that they are synchronized
	always @(posedge eth_clock) begin
		rx_data_in_reg <= rx_data_in;
		rx_ll_src_rdy_in_reg <= ~rx_valid;
		rx_ll_sof_in_reg <= rx_ll_sof_in;
	end
	always @(posedge eth_clock) begin
		rx_data_in_reg2 <= rx_data_in_reg;
		rx_ll_src_rdy_in_reg2 <= rx_ll_src_rdy_in_reg;
		rx_ll_sof_in_reg2 <= rx_ll_sof_in_reg;
		rx_ll_eof_in_reg <= rx_ll_eof_in;
	end
  
	//Enforce minimum packet spacing of N
	always @(posedge eth_clock) begin
		//If we are currently transmitting the last packet, stop taking in new data
		if(tx_ll_eof_out == 1'b0) begin
			tx_ll_dst_rdy_in <= 1'b1;
			packetSpacing <= 2'd3;
		end
		else begin
			if(tx_ll_dst_rdy_in == 1'b1) begin
				packetSpacing <= packetSpacing - 1;
				if(packetSpacing == 2'd0) begin
					tx_ll_dst_rdy_in <= 1'b0;
				end
			end
		end
	end
  
	ethernetController #(
		//Forward parameters to controller
		.INMEM_USER_BYTE_WIDTH(INMEM_USER_BYTE_WIDTH),
		.OUTMEM_USER_BYTE_WIDTH(OUTMEM_USER_BYTE_WIDTH),
		.INMEM_USER_ADDRESS_WIDTH(INMEM_USER_ADDRESS_WIDTH),
		.OUTMEM_USER_ADDRESS_WIDTH(OUTMEM_USER_ADDRESS_WIDTH),
		.INMEM_USER_REGISTER(INMEM_USER_REGISTER),
		.MAC_ADDRESS(MAC_ADDRESS)
	)ec(
		.controllerSideClock(clock),
		.reset(),

		//fix the end of frame line
		//Interface to eth<->LocalLink module
		.rx_ll_data_in(rx_data_in_reg2),							// Input data	
		.rx_ll_sof_in(rx_ll_sof_in_reg2),						// Input start of frame
		.rx_ll_eof_in(rx_ll_eof_in_reg),							// Input end of frame
		.rx_ll_src_rdy_in(rx_ll_src_rdy_in_reg2),				// Input source ready (emac module)

		.tx_ll_data_out(tx_data_out),								// Output data
		.tx_ll_sof_out(),												// Output start of frame
		.tx_ll_eof_out(tx_ll_eof_out),							// Output end of frame
		.tx_ll_src_rdy_out(tx_ll_src_rdy_out),					// Output source ready (controller module)
		.tx_ll_dst_rdy_in(tx_ll_dst_rdy_in),					// Output receiver ready (this module)

		//Interface to user logic
		.userInterfaceClock(~clock),								//This is the clock to which the user circuit's register file, memories accesses, and reset are synchronized
		.userLogicReset(userLogicReset),							//Reset for the user-side logic.  Will be asserted when the reset for the controller is asserted
																			// or when the controller receives a soft reset command over the ethernet.
																		//A user application can only check the status of the run register and reset it to zero
		.userRunValue(userRunValue),							//Run register value
		.userRunClear(userRunClear),							//Does the user circuit want to reset the run register? (active high)

		//User interface to parameter register file
		.register32CmdReq(register32CmdReq),					//Parameter register handshaking request signal
		.register32CmdAck(register32CmdAck),					//Parameter register handshaking acknowledgment signal
		.register32WriteData(register32WriteData),			//Parameter register write data
		.register32Address(register32Address),					//Parameter register address
		.register32WriteEn(register32WriteEn),					//Parameter register write enable
		.register32ReadDataValid(register32ReadDataValid),	//Indicates that a read request has returned with data
		.register32ReadData(register32ReadData),			//Parameter register read data

		//User interface to input memory
		.inputMemoryReadReq(inputMemoryReadReq),			//Input memory handshaking request signal
		.inputMemoryReadAck(inputMemoryReadAck),			//Input memory handshaking acknowledgment signal
		.inputMemoryReadAdd(inputMemoryReadAdd),			//Input memory read address line
		.inputMemoryReadDataValid(inputMemoryReadDataValid),	//Indicates that a read request has returned with data
		.inputMemoryReadData(inputMemoryReadData),			//Input memory read data line

		//Output memeory connections
		.outputMemoryWriteReq(outputMemoryWriteReq),		//Output memory handshaking request signal
		.outputMemoryWriteAck(outputMemoryWriteAck),		//Output memory handshaking acknowledgment signal
		.outputMemoryWriteAdd(outputMemoryWriteAdd),		//Output memory write address line
		.outputMemoryWriteData(outputMemoryWriteData),		//Output memory write data line
		.outputMemoryWriteByteMask(outputMemoryWriteByteMask)	//Output memory write byte mask
	);
  
	assign tx_enable = ~tx_ll_src_rdy_out && ~tx_ll_dst_rdy_in;

	//************Instantiate user module
	simpleTestModuleOne #(
		//Forward parameters to user circuit
		.INMEM_BYTE_WIDTH(INMEM_USER_BYTE_WIDTH),
		.OUTMEM_BYTE_WIDTH(OUTMEM_USER_BYTE_WIDTH),
		.INMEM_ADDRESS_WIDTH(INMEM_USER_ADDRESS_WIDTH),
		.OUTMEM_ADDRESS_WIDTH(OUTMEM_USER_ADDRESS_WIDTH)
	) tm(										
		.clk(clock),										//For simplicity sake (although it doesn't have to), the entire user circuit can run off of the same 
																//		clock used to synchronize the interface.
		.reset(userLogicReset),											//When this signal is asserted (it is synchronous to userInterfaceClk), the user's circuit should reset

		.userRunValue(userRunValue),										//Read run register value - when this is asserted, the user's circuit has control over the i/o buffers & register file
		.userRunClear(userRunClear),										//Reset run register	- assert this signal for 1 clock cycle to indicate that the user's circuit has completed computation and
																					//		wishes to return control over the i/o buffers and register file back to the controller

		//User interface to parameter register file
		.register32CmdReq(register32CmdReq),							//Parameter register handshaking request signal
		.register32CmdAck(register32CmdAck),							//Parameter register handshaking acknowledgment signal
		.register32WriteData(register32WriteData),					//Parameter register write data
		.register32Address(register32Address),						//Parameter register address
		.register32WriteEn(register32WriteEn),						//Parameter register write enable
		.register32ReadDataValid(register32ReadDataValid),		//Indicates that a read request has returned with data
		.register32ReadData(register32ReadData),						//Parameter register read data

		//User interface to input memory
		.inputMemoryReadReq(inputMemoryReadReq),						//Input memory handshaking request signal - assert to begin a read request
		.inputMemoryReadAck(inputMemoryReadAck),						//Input memory handshaking acknowledgement signal - when the req and ack are both true for 1 clock cycle, the request has been accepted
		.inputMemoryReadAdd(inputMemoryReadAdd),						//Input memory read address - can be set the same cycle that the req line is asserted
		.inputMemoryReadDataValid(inputMemoryReadDataValid),		//After a read request is accepted, this line indicates that the read has returned and that the data is ready
		.inputMemoryReadData(inputMemoryReadData),					//Input memory read data

		//User interface to output memory
		.outputMemoryWriteReq(outputMemoryWriteReq),				//Output memory handshaking request signal - assert to begin a write request
		.outputMemoryWriteAck(outputMemoryWriteAck),				//Output memory handshaking acknowledgement signal - when the req and ack are both true for 1 clock cycle, the request has been accepted
		.outputMemoryWriteAdd(outputMemoryWriteAdd),				//Output memory write address - can be set the same cycle that the req line is asserted
		.outputMemoryWriteData(outputMemoryWriteData),				//Output memory write data
		.outputMemoryWriteByteMask(outputMemoryWriteByteMask),	//Allows byte-wise writes when multibyte words are used - each of the OUTMEM_USER_BYTE_WIDTH line can be 0 (do not write byte) or 1 (write byte)

		//Optional connection to 8 LEDs for debugging, etc.
		.LED(LED)
	);
endmodule
