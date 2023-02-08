`timescale 1ns / 1ps
`timescale 1ns / 1ps
module SRFF(clk,J,K,preset,clr,q,qbar);
input clk,J,K,clr,preset;
output reg q,qbar;

always @(posedge clk)
if(clr==1'b1)
begin q<=0 ; qbar<=1; end
else if (preset==1'b1)
begin q<=1;qbar<=0; end
else
    case({J,K})
 2'b00: begin q<=q; qbar<=qbar; end
2'b01: begin q<=1'b0; qbar<=1'b1; end
2'b10: begin q<=1'b1; qbar<=1'b0; end
2'b11: begin q<=qbar; qbar<=q; end
default : {q,qbar}<= 2'bxx;
endcase
endmodule

