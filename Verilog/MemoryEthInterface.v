
`timescale 1ns / 1ps

module simpleTestModuleOne #(

	parameter INMEM_BYTE_WIDTH = 4,
	parameter OUTMEM_BYTE_WIDTH = 4,
	
	//How many N-byte words does the user's circuit use?
	parameter INMEM_ADDRESS_WIDTH = 17,
	parameter OUTMEM_ADDRESS_WIDTH = 13
)(
	input		wire 					clk,
	input		wire 					reset,
																													//A user application can only check the status of the run register and reset it to zero
	input		wire 					userRunValue,																//Read run register value
	output	reg					userRunClear,																//Reset run register
	
	
	
	//Parameter register file connections
	output 	reg															register32CmdReq,					//Parameter register handshaking request signal - assert to perform read or write
	input	wire 															register32CmdAck,					//Parameter register handshaking acknowledgment signal - when the req and ack ar both true fore 1 clock cycle, the request has been accepted
	output 	wire 	[31:0]												register32WriteData,				//Parameter register write data
	output 	reg	[7:0]													register32Address,				//Parameter register address
	output	wire 															register32WriteEn,				//When we put in a request command, are we doing a read or write?
	input 	wire 															register32ReadDataValid,		//After a read request is accepted, this line indicates that the read has returned and that the data is ready
	input 	wire 	[31:0]												register32ReadData,				//Parameter register read data
	
	//Input memory connections
	output 	reg															inputMemoryReadReq,				//Input memory handshaking request signal - assert to begin a read request
	input		wire 															inputMemoryReadAck,				//Input memory handshaking acknowledgement signal - when the req and ack are both true for 1 clock cycle, the request has been accepted
	output	reg	[(INMEM_ADDRESS_WIDTH - 1):0] 				inputMemoryReadAdd,				//Input memory read address - can be set the same cycle that the req line is asserted
	input 	wire 															inputMemoryReadDataValid,		//After a read request is accepted, this line indicates that the read has returned and that the data is ready
	input		wire 	[((INMEM_BYTE_WIDTH * 8) - 1):0] 			inputMemoryReadData,				//Input memory read data
	
	//Output memory connections
	output 	reg															outputMemoryWriteReq,			//Output memory handshaking request signal - assert to begin a write request
	input 	wire															outputMemoryWriteAck,			//Output memory handshaking acknowledgement signal - when the req and ack are both true for 1 clock cycle, the request has been accepted
	output	reg	[(OUTMEM_ADDRESS_WIDTH - 1):0] 				outputMemoryWriteAdd,			//Output memory write address - can be set the same cycle that the req line is asserted
	output	reg	[((OUTMEM_BYTE_WIDTH * 8) - 1):0]			outputMemoryWriteData,			//Output memory write data
	output 	wire	[(OUTMEM_BYTE_WIDTH - 1):0]					outputMemoryWriteByteMask,		//Allows byte-wise writes when multibyte words are used - each of the OUTMEM_USER_BYTE_WIDTH line can be 0 (do not write byte) or 1 (write byte)

	//8 optional LEDs for visual feedback & debugging
	output	wire	[7:0]	LED					
);

	
	parameter M = 256;
	parameter LMAX = 100;
	
	localparam IDLE = 4'h0;
	localparam READREGS = 4'h1;
	localparam WAIT = 4'h2;
	localparam READETH = 4'h3;
	localparam WRITEETH = 4'h4;
	localparam FLUSH = 4'h5;
	localparam ERROR = 4'h6;
	
	

	localparam update_D = 8'h00; 
	localparam New_X = 8'h01;
	localparam flush_CMD = 8'h02; 
	
	reg [3:0]  cs;
	reg [1:0] inner_mode_r;
	reg [1:0] inner_mode_w;
	reg [31:0] length;
	
	
	reg [8:0] count;
	reg [2:0] count1;
	reg [8:0] reqCount;
	
	
	assign register32WriteEn = 0;
	assign register32WriteData = 32'b0;
	assign outputMemoryWriteByteMask = {OUTMEM_BYTE_WIDTH{1'b1}};
	
	assign 	LED = {cs,inner_mode_r,inner_mode_w};
	
	
	
	reg We;
	reg weX_in;
	reg flush1;
	reg data_arrive;
	reg [31:0]id_write;
	reg [31:0] dinaD;
	reg [31:0] dinaX;
	reg [14:0] addrD_in;
	reg [7:0] addrX_in;
	reg [6:0] addrVout;
	reg [6:0] addrSupp;
	//reg [31:0] supplen;

	wire [31:0] doutVout;
	wire [31:0] id_read;
	wire [31:0] Supp_Len;
	wire[31:0] doutSuppOut;

	reg [6:0] num_of_col;
	reg which;

    wire idx_is_set; 
	reg read_write_done;
	reg we_idx;
	wire in_progress;
	
	
	
	
	ParallelDecomposition dut_ParallelDecomposition (
    .clk(clk), 
    .rst(reset), 
	
    .data_arrive(data_arrive), 
    .flush(flush1), 
    .read_write_done(read_write_done), 
    .idx_is_set(idx_is_set),
	.in_progress(in_progress),
	
    .we(We), 
    .dinaD(dinaD), 
    .addrD_in(addrD_in), 
	
    .weX_in(weX_in), 
    .dinaX(dinaX), 
    .addrX_in(addrX_in), 
	
    .id_write(id_write), 
	
    .addrVout(addrVout), 
    .doutVout(doutVout), 
	
    .addrSupp(addrSupp), 
    .doutSuppOut(doutSuppOut), 
	
    .id_read(id_read), 
	
    .Supp_Len(Supp_Len),
	.we_idx(we_idx)
    );

	
	always @(posedge clk) 
	begin
		if(reset) 
		begin
			cs <= IDLE;
			length <= 0;
			
			userRunClear <= 0;
	
			inputMemoryReadReq <= 0;
			inputMemoryReadAdd <= 0;
			
			outputMemoryWriteReq <= 0;
			outputMemoryWriteAdd <= 0;
			outputMemoryWriteData <= 0;
			
			data_arrive <= 0;
			num_of_col <= 0;
			
			count <= 0;
			count1 <= 0;
			reqCount <= 0;
			//supplen <= 0;
			read_write_done <= 1'b0;
			
			We <= 0;
			weX_in <= 0;
			flush1 <= 0;
			id_write <= 0;
			dinaD <= 0;
			dinaX <= 0;
			addrD_in <= 0;
			addrX_in <= 0;
			addrVout <= 0;
			addrSupp <= 0;
			num_of_col <= 0;
			read_write_done <= 0;
			we_idx <= 0;
			inner_mode_r <= 0;
			inner_mode_w <= 0;
			
		end
		else 
		begin
			case(cs)
			IDLE:
			begin
				read_write_done <= 1'b0;
				we_idx <= 1'b0;
				userRunClear <= 0;

				if(userRunValue && !userRunClear)
				begin
					register32Address <= 0;
					inputMemoryReadAdd <= 0;
					outputMemoryWriteAdd <= 0;					
					count <= 0;
					count1 <= 0;
					cs <= READREGS;
				end	
			end
			
			READREGS:
			begin
				if(register32Address < 1)
				begin
					register32CmdReq <= 1;
				end
				
				if(register32CmdAck && register32CmdReq)
				begin
					register32Address <= register32Address + 1;
					register32CmdReq <= 0;
				end
				
				if(register32ReadDataValid)
				begin
					case (register32ReadData[7:0])
					
					update_D:				
						begin
							cs <= WAIT;
							which <= 1'b0;
						end
						
					New_X:
						begin
							cs <= WAIT;
							which <= 1'b1;
							data_arrive <= 1;// set one to stimulate parallel decomposition module to select an OMP core
						end
					
					flush_CMD:
						begin
							inputMemoryReadAdd <= 0;
							outputMemoryWriteAdd <= 0;				
							count <= 0;
							count1 <= 0;
							cs <= FLUSH;
						end
					default
						cs <= ERROR;
						
					endcase
				end
			end
			
			
			WAIT:
			begin
				case (which)
					0:
						begin
							if (~in_progress)
								begin
									inputMemoryReadAdd <= 0;
									outputMemoryWriteAdd <= 0;
									addrD_in <= num_of_col* M ;
									count <= 0;
									cs <= READETH;
									inner_mode_r <= 2'b00;
								end
						end

					1:
						begin
							if(idx_is_set)
								begin
									inputMemoryReadAdd <= 0;
									outputMemoryWriteAdd <= 0;
									count <= 0;
									cs <= WRITEETH;
									inner_mode_w <= 2'b00;
									addrX_in <= 0;
									data_arrive <= 0;
								end
						end
					endcase
			end
			
			READETH:
			begin
				case(inner_mode_r)
				
					0:  
					begin
						We <= 0;
						if(reqCount < M)
						begin
							inputMemoryReadReq <= 1;
						end

						if( inputMemoryReadReq && inputMemoryReadAck)
						begin
							inputMemoryReadAdd <= inputMemoryReadAdd + 1;
							reqCount <= reqCount + 1;
							inputMemoryReadReq <= 0;
						end
				
						if(inputMemoryReadDataValid)
						begin
							addrD_in <= addrD_in + 1;
							dinaD <= inputMemoryReadData;
							We <= 1;
							count <= count + 1;
						end
						if(count == M)
						begin
							num_of_col <= num_of_col + 1;
							We <= 0;
							cs <= IDLE;
							reqCount <= 0;
							userRunClear <= 1;
						end
					end
 					
					1:
					begin
						
						if(reqCount < M)
						begin
							inputMemoryReadReq <= 1;
						end

						if(inputMemoryReadReq && inputMemoryReadAck)
						begin
							inputMemoryReadAdd <= inputMemoryReadAdd + 1;
							reqCount <= reqCount + 1;
							inputMemoryReadReq <= 0;
						end
				
						if(inputMemoryReadDataValid)
						begin
							dinaX <= inputMemoryReadData;
							addrX_in <= addrX_in +1;
							count <= count + 1;
						end
						
						if(count == M)
						begin
							inner_mode_r <= 2'b10;
							cs <= READETH;
							weX_in <= 1'b0;
							reqCount <= 0;
							count <= 0;
						end
					
					end
					
					2:
					begin

						

						if(reqCount < 1)
						begin
							inputMemoryReadReq <= 1;
						end

						if(inputMemoryReadReq && inputMemoryReadAck)
						begin
							inputMemoryReadAdd <= inputMemoryReadAdd + 1;
							reqCount <= reqCount + 1;
							inputMemoryReadReq <= 0;
						end
				
						if(inputMemoryReadDataValid)
						begin
							we_idx <= 1'b1;
							id_write <= inputMemoryReadData;
							cs <= IDLE;
							userRunClear <= 1;
							read_write_done <= 1'b1;
							inner_mode_w <= 2'b00;
							outputMemoryWriteAdd <= 0;
							reqCount <= 0;
							count <= 0;
							inner_mode_r <= 0;
						end
					end
					
					default
						begin
							cs <= IDLE;
							userRunClear <= 1;
						end
				endcase
			end

			WRITEETH:
				begin
				
					case(inner_mode_w)
						0:
						begin


							if(outputMemoryWriteReq  && outputMemoryWriteAck) 
							begin	
								outputMemoryWriteReq <= 0;
								outputMemoryWriteAdd <= outputMemoryWriteAdd + 1;
								
								
							end
							if(count == 1)
							begin
								inner_mode_w <= 2'b01;
								cs <= WRITEETH;
								reqCount <= 0;
							end
							else
							 begin	

								outputMemoryWriteReq <= 1;
								outputMemoryWriteData <= Supp_Len;
								//supplen <= Supp_Len;
								count <= count + 1;
							 end
							
							
							
						end
						
						1:
						begin
									
							if(outputMemoryWriteReq  && outputMemoryWriteAck) 
							begin	
								outputMemoryWriteReq <= 0;
								outputMemoryWriteAdd <= outputMemoryWriteAdd + 1;
								
							end
							
							if(count == 2)
							begin
								inner_mode_w <= 2'b10;
								cs <= WRITEETH;
								addrVout <= 0;
								reqCount <= 0;
								count <= 0;
							end
							else
							begin						 
								outputMemoryWriteReq <= 1;
								outputMemoryWriteData <= id_read ;
								count <= count + 1;
							end					
						end
						
						2:
						begin
						
							if(outputMemoryWriteReq  && outputMemoryWriteAck) 
							begin
								outputMemoryWriteAdd <= outputMemoryWriteAdd + 1;
								addrVout <= addrVout + 1;
								outputMemoryWriteReq <= 0;	
							end
						
							if(count == 100)
							begin
								inner_mode_w <= 2'b11;
								cs <= WRITEETH;
								addrSupp <= 0;
								reqCount <= 0;
								count <= 0;
							end
							else
							 begin
								outputMemoryWriteReq <= 1;
								outputMemoryWriteData <= doutVout;
								count <= count + 1;
							 end
						
						end
							
						3:
						begin

							if(outputMemoryWriteReq  && outputMemoryWriteAck) 
							begin
								outputMemoryWriteAdd <= outputMemoryWriteAdd + 1;
								addrSupp <= addrSupp + 1;
								
								outputMemoryWriteReq <= 0;
								
							end
							
							if(count == 100)
							begin
								if(flush1 == 1'b1)
									begin
										cs <= FLUSH;
										read_write_done <= 1'b1;
										count <= 0;
										inner_mode_w <= 2'b00;
									end
								else
									begin
									
										cs <= READETH;
										inner_mode_r <= 2'b01;
										count <= 0;
										reqCount <= 0;
										inner_mode_w <= 2'b00;
										weX_in <= 1'b1;
											
									end
							end
							else
								begin
									outputMemoryWriteReq <= 1;
									outputMemoryWriteData <= doutSuppOut;
									count <= count + 1;
								end
						end
						
						default
						begin
							cs <= IDLE;
							userRunClear <= 1;
						end
					endcase
				end
		
			
			FLUSH:
			begin
				flush1 <= 1;
				read_write_done <= 1'b0;
				
					if(count1 < 4)
					begin
						outputMemoryWriteAdd <= 0;
						cs <= WRITEETH;
						inner_mode_w <= 2'b00;
						reqCount <= 0;
						count <= 0;
						count1 <= count1 + 1;						
					end
					else
					begin
						cs <= IDLE;
						userRunClear <= 1;
						flush1 <= 0;
					end
			end

			
			ERROR:
				cs <= ERROR;
			default:
			begin
				cs <= IDLE;
				userRunClear <= 1;
			end
			endcase
		end
	end

endmodule






