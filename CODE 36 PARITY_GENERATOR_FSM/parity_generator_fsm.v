`timescale 1ns / 1ps
module parity_generator_fsm(x, clk, z);
input x, clk;
output reg z;
reg even_odd; 
parameter EVEN=0, ODD=1;
always @ (posedge clk)
case (even_odd)
EVEN: even_odd <= x ? ODD : EVEN;
ODD: even_odd <= x ? EVEN : ODD ;
default : even_odd <= EVEN;
endcase

always @ (even_odd)
case (even_odd)
EVEN: z = 0;
ODD: z = 1;
endcase
endmodule