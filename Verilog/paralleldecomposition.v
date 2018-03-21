`timescale 1ns / 1ps

module ParallelDecomposition( 

input wire clk,
input wire rst,

input wire data_arrive,
input wire flush,
input wire read_write_done,
output reg idx_is_set,
output reg in_progress,

input wire we,
input wire [31:0] dinaD,
input wire [14:0] addrD_in,

input wire weX_in,
input wire [31:0] dinaX,
input wire [7:0]  addrX_in,

input  wire [6:0]  addrVout, 
output wire [31:0] doutVout,

input  wire [6:0] addrSupp,
output wire [31:0] doutSuppOut,

input wire we_idx,
output wire [31:0] id_read,
input wire [31:0] id_write,

output wire [31:0] Supp_Len
    );
    
    
parameter N = 4;
parameter M = 256;
parameter LMAX = 100;


reg [16:0] counter;
reg [2:0] counter1;


reg [14:0] addr;
wire [31:0] data_to;

D_RAM D_main (
  .clka(clk), 
  .wea(we),
  .addra(in_progress? addr : addrD_in ), 
  .dina(dinaD), 
  .douta(data_to) 
);

reg [1:0] addr_idx;
IDX idx_RAM (
  .clka(clk), 
  .wea(we_idx), 
  .addra(addr_idx), 
  .dina(id_write), 
  .douta(id_read) 
);


integer i, z;

wire [0:0] ap_done [N-1:0];
wire  [N-1:0]ap_idle;

wire [14:0] addrQ [N-1:0] ;
wire [31:0] datain [N-1:0];
wire [7:0] X_address0_in [N-1:0] ;
wire [31:0] X_d0_in [N-1:0];
wire [6:0] V_address0_in [N-1:0];
wire [6:0] supp_address0_in [N-1:0];
wire [31:0] supp_q0_out [N-1:0] ; 
wire [31:0] V_q0_out [N-1:0] ;
wire [31:0] supp_len [N-1:0];

reg [3:0] enable;
reg [N-1:0] Q_we_in ;
reg [N-1:0] ap_start  ; 
reg [N-1:0] X_we0_in  ;
reg [N-1:0]supp_ce0_in ;
reg [2:0]state;
reg [2:0] idx;


genvar k;
generate
	for(k=0;k<N;k=k+1)
	begin:OMP_Block
		
	OMP_core ompCore (
    .clk(clk), 
    .rst(rst), 
    .Q_address_in(addrQ[k]), 
    .datain(datain[k]), 
    .Q_we_in(Q_we_in[k]), 
    .ap_done(ap_done[k]), 
    .ap_idle(ap_idle[k]), 
    .ap_start(ap_start[k]), 
    .X_address0_in(X_address0_in[k]), 
    .X_d0_in(X_d0_in[k]), 
    .X_we0_in(X_we0_in[k]), 
    .V_address0_in(V_address0_in[k]),   
    .V_q0(V_q0_out[k]), 
    .supp_address0_in(supp_address0_in[k]), 
    .supp_q0(supp_q0_out[k]), 
    .supp_len(supp_len[k])
    );
	 end
endgenerate


genvar j;
generate
	for(j=0;j<N;j=j+1)
	begin:address_assignment
		assign addrQ[j] = addr-1;
		assign datain[j] = data_to; 
		assign X_address0_in[j] = addrX_in; 
		assign X_d0_in[j] = dinaX;
		assign V_address0_in[j] = addrVout; 
		assign supp_address0_in[j] = addrSupp ;
	 end
endgenerate

assign doutVout = V_q0_out[idx];
assign doutSuppOut = supp_q0_out[idx];
assign Supp_Len = supp_len[idx];

always @ (*)
	begin
		for(z = 0;z < N;z = z+1)
		
			begin
				X_we0_in[z] <= 0;
			end

		case (idx)
			2'b00 : 
				begin
					X_we0_in[0] <= weX_in;
				end
			2'b01 : 
				begin
					X_we0_in[1] <= weX_in;
				end
			2'b10 : 
				begin
					X_we0_in[2] <= weX_in;
				end
			2'b11 : 
				begin
					X_we0_in[3] <= weX_in;
				end
		endcase
		
	end
	
	
reg [31:0] IN_BUS;
wire [7:0] chipscop_out;   
wire [35:0] chipscop_control;     
     
 always@(*)
 begin
         IN_BUS <= 0;
         case(chipscop_out)
         0:
                 IN_BUS <= data_arrive;
         1:
                 IN_BUS <= enable;
			 2: 
						IN_BUS <= idx;
         3:
                 IN_BUS <= weX_in;	
			 4:
                 IN_BUS <= dinaX;
			 5:
                 IN_BUS <= dinaD;								
						
         default:
                 IN_BUS <= 32'b0;
         endcase
			 
 end
 
	  
	 chipscop u_chipscop  (
    .CONTROL(chipscop_control), // INOUT BUS [35:0]
    .ASYNC_IN(IN_BUS), // IN BUS [31:0]
    .ASYNC_OUT(chipscop_out) // OUT BUS [7:0]
);
	  
     chipscope_icon u_chipscope_icon (
 .CONTROL0(chipscop_control) // INOUT BUS [35:0]
     );

	
always @(posedge clk)
	begin
	if(rst)
		begin
			state <= 0;
			ap_start <= 0;
			idx <= 0;	
			counter <= 0;
			counter1 <= 0;	
			in_progress <=0;
			idx_is_set<= 1'b0;
			enable <= 1'b0;
			Q_we_in <= 0;
			addr <= 15'b000000000000000;
			supp_ce0_in <= 0;
		end
	else
	
	case(state)
		0:
			begin
				ap_start[idx] <= 1'b0; 
				idx_is_set<= 1'b0;
				
				if (data_arrive && ap_idle)
					begin
						state <= 1;
						//in_progress <= 1;		
					end
						
				else if ( flush && &ap_idle)
					begin
						state <= 6;
						idx_is_set <= 1'b0;
						counter1 <= 0;
						counter <= 0;
					end
				else
						state <= 0;			
			end
				
		1:
			begin
				enable <= 4'b0;
				for( i = 0 ; i < N ; i = i+1)
					begin
						if(ap_idle[i]== 1'b1)
							begin
								enable [i] <= 1'b1;
							end
					end
				state <= 2;
			end
				
	
		2:
			begin
				addr <= 15'b000000000000000;
				counter <= 0; 
				
				if (enable[3])
		     		begin
		     			state <=3;
		     			idx <= 3;
		     			addr_idx <= 3;
		     		end
								
				else if (enable[2])
		     		begin
		     			state <=3;
		     			idx <= 2;
		     			addr_idx <= 2;
		     		end
		     			
		     	else if (enable[1])
		     		begin
		     			state <=3;
		     			addr_idx <= 1;
		     			idx <= 1;				
		     		end
		     			
				else if (enable[0])
					begin
						state <= 3;
						idx <= 0;
						addr_idx <= 0;
					end
				else
						state <= 0;
			end
				
		3:
			begin
				idx_is_set <= 1'b1;
				state <= 4;
				counter <= 0;
			end

			
		4:
			begin
				if (read_write_done == 1'b1)
					begin
						idx_is_set<= 1'b0;
						if (flush == 1'b1)
							begin
								state <= 6;
								counter <= 0;
							end
	
						else
							begin
								addr <= 0;
								Q_we_in[idx] <= 1'b1;
								in_progress <= 1;	
								state <= 5;
							end
							
					end
				else
					state <= 4;
			end
				
				
		5:
			begin
				if( counter < (M*LMAX))
					begin
						addr <= counter;
						counter <= counter + 1;
					end
				else
					begin
						state <= 0;
						in_progress <= 0;
						ap_start[idx] <= 1'b1;
						counter <= 0;							
						Q_we_in[idx] <= 1'b0;
					end
			end
			
	
		6: 
			begin
				if ((counter1 < N && read_write_done == 1'b1) || counter1 == 0 )
					begin
						idx <= counter1;
						idx_is_set<= 1'b1;
						state <= 4;
						counter1 <= counter1 + 1;
						counter <= 0; 	
					end
				else
					begin
						state <= 0;
					end
			end
				
		 default:
			state <= 0;
		endcase
	end
	
endmodule
