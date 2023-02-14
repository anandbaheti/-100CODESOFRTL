
`timescale 1ns / 1ps
module tb;
reg signal,clk;
wire detect;

PED g1(.signal(signal),.clk(clk),.detect(detect));
always #5  clk=~clk; 
initial
begin
clk=0;
signal = 1;
#10 signal = 0;
#10 signal = 1;
#10 signal = 0;
#10 signal = 1;
#10 signal = 0;
#10 signal = 1;
#10 signal = 0;
#10 signal = 1;
#10 signal = 0;
#10 signal = 1;
#10 signal = 0;
end

initial
begin
#120 $finish();
end
endmodule


