`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:18:58 03/31/2014
// Design Name:   simpleTestModuleOne
// Module Name:   C:/Users/Bita/Desktop/ETHERNET/HW_Example_13_2_ML605/parallel_tb.v
// Project Name:  HW_Example_13_2_ML605
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: simpleTestModuleOne
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module parallel_tb;

	// Inputs
	reg clk;
	reg reset;
	reg userRunValue;
	reg register32CmdAck;
	reg register32ReadDataValid;
	reg [31:0] register32ReadData;
	reg inputMemoryReadAck;
	reg inputMemoryReadDataValid;
	reg [31:0] inputMemoryReadData;
	reg outputMemoryWriteAck;

	// Outputs
	wire userRunClear;
	wire register32CmdReq;
	wire [31:0] register32WriteData;
	wire [7:0] register32Address;
	wire register32WriteEn;
	wire inputMemoryReadReq;
	wire [16:0] inputMemoryReadAdd;
	wire outputMemoryWriteReq;
	wire [12:0] outputMemoryWriteAdd;
	wire [31:0] outputMemoryWriteData;
	wire [3:0] outputMemoryWriteByteMask;
	wire [7:0] LED;

	// Instantiate the Unit Under Test (UUT)
	simpleTestModuleOne uut (
		.clk(clk), 
		.reset(reset), 
		.userRunValue(userRunValue), 
		.userRunClear(userRunClear), 
		.register32CmdReq(register32CmdReq), 
		.register32CmdAck(register32CmdAck), 
		.register32WriteData(register32WriteData), 
		.register32Address(register32Address), 
		.register32WriteEn(register32WriteEn), 
		.register32ReadDataValid(register32ReadDataValid), 
		.register32ReadData(register32ReadData), 
		.inputMemoryReadReq(inputMemoryReadReq), 
		.inputMemoryReadAck(inputMemoryReadAck), 
		.inputMemoryReadAdd(inputMemoryReadAdd), 
		.inputMemoryReadDataValid(inputMemoryReadDataValid), 
		.inputMemoryReadData(inputMemoryReadData), 
		.outputMemoryWriteReq(outputMemoryWriteReq), 
		.outputMemoryWriteAck(outputMemoryWriteAck), 
		.outputMemoryWriteAdd(outputMemoryWriteAdd), 
		.outputMemoryWriteData(outputMemoryWriteData), 
		.outputMemoryWriteByteMask(outputMemoryWriteByteMask), 
		.LED(LED)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		userRunValue = 0;
		register32CmdAck = 0;
		register32ReadDataValid = 0;
		register32ReadData = 0;
		inputMemoryReadAck = 0;
		inputMemoryReadDataValid = 0;
		inputMemoryReadData = 0;
		outputMemoryWriteAck = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

