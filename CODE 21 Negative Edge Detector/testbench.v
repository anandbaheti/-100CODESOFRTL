
`timescale 1ns / 1ps
module tb;
reg signal,clk;
wire detect;

PED g1(.signal(signal),.clk(clk),.detect(detect));
always #5  clk=~clk; 
initial
begin
clk=0;
signal=0;
forever #10 signal=~signal;
end

initial
begin
#200 $finish();
end
endmodule


