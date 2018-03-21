`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:05:15 03/17/2014 
// Design Name: 
// Module Name:    OMP_core 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module OMP_core( 
clk,
rst,

Q_address_in,
datain,
Q_we_in,

ap_done, 
ap_idle,
ap_start,

X_address0_in,
X_d0_in,
X_we0_in,

V_address0_in,
V_q0,

supp_address0_in,
supp_q0,

supp_len

    );


parameter P =  16;
parameter l = 32'd100;
parameter k = 32'd100;
parameter epsilon = 32'h3E051EB8;

input clk;
input rst;
input wire [14:0] Q_address_in;
input  wire[31:0] datain;
input wire  Q_we_in;


input wire   ap_start;
output wire  ap_done;
output wire  ap_idle;

//output wire [31:0]id_column; 
//input wire  [31:0]id_col;





wire   ap_ready;

wire  [10:0] Q_address0[P-1:0];
wire  [0:0] Q_ce0[P-1:0];
wire  [0:0] Q_we0[P-1:0];
wire  [31:0] Q_d0[P-1:0];
wire  [31:0] Q_q0[P-1:0];

input wire  [7:0] X_address0_in;
input wire[31:0] X_d0_in;
input  wire X_we0_in;

wire X_we0;
wire   X_ce0;
wire  [7:0] X_address0;
wire [31:0] X_q0;
wire [31:0] X_d0;


input wire  [6:0] V_address0_in;
output wire  [31:0] V_q0;
wire  [31:0] V_d0;
wire  V_ce0;
wire  [6:0] V_address0;

input wire  [6:0] supp_address0_in;
output wire [31:0] supp_q0;
wire  [6:0] supp_address0;
wire   supp_ce0;
wire   supp_we0;
wire  [31:0] supp_d0;

output wire  [31:0] supp_len;
wire   supp_len_ap_vld;
wire  V_we0;



assign 	X_we0 = 0;
assign	X_d0 = 0;

wire working;
assign  working = ~ ap_idle;
//assign id_column = working? 0 : id_col;



	
	
/*omp_X X_u (
  .clka(clk), // input clka
  .wea(working?X_we0 : X_we0_in), // input [0 : 0] wea
  .addra(working? X_address0 : X_address0_in), // input [7 : 0] addra
  .dina(working?X_d0 : X_d0_in), // input [31 : 0] dina
  .douta(X_q0) // output [31 : 0] douta
);*/

omp_X X_u (
  .clka(clk), // input clka
  .wea(ap_idle? X_we0_in: X_we0), // input [0 : 0] wea
  .addra(ap_idle? X_address0_in : X_address0 ), // input [7 : 0] addra
  .dina(ap_idle?X_d0_in: X_d0 ), // input [31 : 0] dina
  .douta(X_q0) // output [31 : 0] douta
);	
		
genvar i;
generate
	for(i=0;i<P;i=i+1)
	begin:MEM
	

	/*omp_Q Q_u (
			.clka(clk), // input clka
			.wea(working?Q_we0[i]:(i==Q_address_in[3:0])?Q_we_in:1'b0), // input [0 : 0] wea
			.addra(working?Q_address0[i]:Q_address_in[14:4]), // input [10 : 0] addra
			.dina(working?Q_d0[i]: datain), // input [31 : 0] dina
			.douta(Q_q0[i]) // output [31 : 0] douta
			);*/
			
	omp_Q Q_u (
			.clka(clk), // input clka
			.wea(ap_idle?(i==Q_address_in[3:0])?Q_we_in:1'b0:Q_we0[i]), // input [0 : 0] wea
			.addra(ap_idle?Q_address_in[14:4]: Q_address0[i]), // input [10 : 0] addra
			.dina(ap_idle?datain:Q_d0[i]), // input [31 : 0] dina
			.douta(Q_q0[i]) // output [31 : 0] douta
			);
	
	end
endgenerate

/*omp_V V_u (
  .clka(clk), // input clka
  .wea(V_we0), // input [0 : 0] wea
  .addra(working?V_address0:V_address0_in), // input [6 : 0] addra
  .dina(V_d0), // input [31 : 0] dina
  .douta(V_q0) // output [31 : 0] douta
);*/
wire [31:0] Vcheck;
assign Vcheck = V_q0;
omp_V V_u (
  .clka(clk), // input clka
  .wea(V_we0), // input [0 : 0] wea
  .addra(ap_idle?V_address0_in:V_address0), // input [6 : 0] addra
  //.addra(V_address0),
  .dina(V_d0), // input [31 : 0] dina
  .douta(V_q0) // output [31 : 0] douta
);

/*omp_supp supp_u (
  .clka(clk), // input clka
  .wea(supp_we0), // input [0 : 0] wea
  .addra(working?supp_address0:supp_address0_in), // input [6 : 0] addra
  .dina(supp_d0), // input [31 : 0] dina
  .douta(supp_q0) // output [31 : 0] douta
);*/
omp_supp supp_u (
  .clka(clk), // input clka
  .wea(supp_we0), // input [0 : 0] wea
  .addra(ap_idle?supp_address0_in:supp_address0), // input [6 : 0] addra
  .dina(supp_d0), // input [31 : 0] dina
  .douta(supp_q0) // output [31 : 0] douta
);


omp omp_uut (
    .ap_clk(clk), 
    .ap_rst(rst), 
    .ap_start(ap_start), 
    .ap_done(ap_done), 
    .ap_idle(ap_idle), 
    .ap_ready(ap_ready), 
	
    .Qt_0_address0(Q_address0[0]), 
    .Qt_0_ce0(Q_ce0[0]), 
    .Qt_0_we0(Q_we0[0]), 
    .Qt_0_d0(Q_d0[0]), 
    .Qt_0_q0(Q_q0[0]), 
	
	.Qt_1_address0(Q_address0[1]), 
    .Qt_1_ce0(Q_ce0[1]), 
    .Qt_1_we0(Q_we0[1]), 
    .Qt_1_d0(Q_d0[1]), 
    .Qt_1_q0(Q_q0[1]), 
	
	.Qt_2_address0(Q_address0[2]), 
    .Qt_2_ce0(Q_ce0[2]), 
    .Qt_2_we0(Q_we0[2]), 
    .Qt_2_d0(Q_d0[2]), 
    .Qt_2_q0(Q_q0[2]), 
	
	.Qt_3_address0(Q_address0[3]), 
    .Qt_3_ce0(Q_ce0[3]), 
    .Qt_3_we0(Q_we0[3]), 
    .Qt_3_d0(Q_d0[3]), 
    .Qt_3_q0(Q_q0[3]), 
	
	.Qt_4_address0(Q_address0[4]), 
    .Qt_4_ce0(Q_ce0[4]), 
    .Qt_4_we0(Q_we0[4]), 
    .Qt_4_d0(Q_d0[4]), 
    .Qt_4_q0(Q_q0[4]), 
	
	.Qt_5_address0(Q_address0[5]), 
    .Qt_5_ce0(Q_ce0[5]), 
    .Qt_5_we0(Q_we0[5]), 
    .Qt_5_d0(Q_d0[5]), 
    .Qt_5_q0(Q_q0[5]), 
	
	.Qt_6_address0(Q_address0[6]), 
    .Qt_6_ce0(Q_ce0[6]), 
    .Qt_6_we0(Q_we0[6]), 
    .Qt_6_d0(Q_d0[6]), 
    .Qt_6_q0(Q_q0[6]), 
	
	.Qt_7_address0(Q_address0[7]), 
    .Qt_7_ce0(Q_ce0[7]), 
    .Qt_7_we0(Q_we0[7]), 
    .Qt_7_d0(Q_d0[7]), 
    .Qt_7_q0(Q_q0[7]), 
	
	.Qt_8_address0(Q_address0[8]), 
    .Qt_8_ce0(Q_ce0[8]), 
    .Qt_8_we0(Q_we0[8]), 
    .Qt_8_d0(Q_d0[8]), 
    .Qt_8_q0(Q_q0[8]), 
	
	.Qt_9_address0(Q_address0[9]), 
    .Qt_9_ce0(Q_ce0[9]), 
    .Qt_9_we0(Q_we0[9]), 
    .Qt_9_d0(Q_d0[9]), 
    .Qt_9_q0(Q_q0[9]), 
	
	.Qt_10_address0(Q_address0[10]), 
    .Qt_10_ce0(Q_ce0[10]), 
    .Qt_10_we0(Q_we0[10]), 
    .Qt_10_d0(Q_d0[10]), 
    .Qt_10_q0(Q_q0[10]), 
	
	.Qt_11_address0(Q_address0[11]), 
    .Qt_11_ce0(Q_ce0[11]), 
    .Qt_11_we0(Q_we0[11]), 
    .Qt_11_d0(Q_d0[11]), 
    .Qt_11_q0(Q_q0[11]), 
	
	.Qt_12_address0(Q_address0[12]), 
    .Qt_12_ce0(Q_ce0[12]), 
    .Qt_12_we0(Q_we0[12]), 
    .Qt_12_d0(Q_d0[12]), 
    .Qt_12_q0(Q_q0[12]), 
	
	.Qt_13_address0(Q_address0[13]), 
    .Qt_13_ce0(Q_ce0[13]), 
    .Qt_13_we0(Q_we0[13]), 
    .Qt_13_d0(Q_d0[13]), 
    .Qt_13_q0(Q_q0[13]), 
	
	.Qt_14_address0(Q_address0[14]), 
    .Qt_14_ce0(Q_ce0[14]), 
    .Qt_14_we0(Q_we0[14]), 
    .Qt_14_d0(Q_d0[14]), 
    .Qt_14_q0(Q_q0[14]), 
	
	.Qt_15_address0(Q_address0[15]), 
    .Qt_15_ce0(Q_ce0[15]), 
    .Qt_15_we0(Q_we0[15]), 
    .Qt_15_d0(Q_d0[15]), 
    .Qt_15_q0(Q_q0[15]), 
	
    .X_address0(X_address0), 
    .X_ce0(X_ce0), 
    .X_q0(X_q0),  
    .l(l), 
    .k(k), 
    .epsilon(epsilon),
	
    .V_address0(V_address0), 
    .V_ce0(V_ce0), 
    .V_we0(V_we0), 
    .V_d0(V_d0), 
    .V_q0(V_q0), 
	
    .supp_address0(supp_address0), 
    .supp_ce0(supp_ce0), 
    .supp_we0(supp_we0), 
    .supp_d0(supp_d0), 
    .supp_q0(supp_q0), 
    .supp_len(supp_len), 
    .supp_len_ap_vld(supp_len_ap_vld)
    );



endmodule
