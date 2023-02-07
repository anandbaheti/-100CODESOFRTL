`timescale 1ns / 1ps


module tbsr;
reg clk,S,R,clr,preset;
wire q,qbar;

SRFF uut(.clk(clk),.S(S),.R(R),.preset(preset),.clr(clr),.q(q),.qbar(qbar));

always #2 {S,R}={S,R}+1'b1;
always #1 clk=~clk;
initial
begin
clk=0;clr=1'b1;S=0;R=0;preset=0;
#10 preset =1'b1;
#10 preset =1'b0;

end
initial 
#10 clr =1'b0;

initial #50 $finish;
endmodule
