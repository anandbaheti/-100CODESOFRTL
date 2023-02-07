`timescale 1ns / 1ps
module SRFF(clk,S,R,preset,clr,q,qbar);
input clk,S,R,clr,preset;
output reg q,qbar;

always @(posedge clk)
if(clr==1'b1)
begin q<=0 ; qbar<=1; end
else if (preset==1'b1)
begin q<=1;qbar<=0; end
else
    case({S,R})
 2'b00: begin q<=q; qbar<=qbar; end
2'b01: begin q<=1'b0; qbar<=1'b1; end
2'b10: begin q<=1'b1; qbar<=1'b0; end
2'b11: begin q<=1'bx; qbar<=1'bx; end
default : {q,qbar}<= 2'bxx;
endcase
endmodule
