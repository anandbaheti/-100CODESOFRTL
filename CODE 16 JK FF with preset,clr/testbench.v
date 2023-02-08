`timescale 1ns / 1ps


`timescale 1ns / 1ps


module tbsr;
reg clk,J,K,clr,preset;
wire q,qbar;

SRFF uut(.clk(clk),.J(J),.K(K),.preset(preset),.clr(clr),.q(q),.qbar(qbar));

always #2 {J,K}={J,K}+1'b1;
always #1 clk=~clk;
initial
begin
clk=0;clr=1'b1;J=0;K=0;preset=0;
#10 preset =1'b1;
#10 preset =1'b0;

end
initial 
#10 clr =1'b0;

initial #50 $finish;
endmodule
