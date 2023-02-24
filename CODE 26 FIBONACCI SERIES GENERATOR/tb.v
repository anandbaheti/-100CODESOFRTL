`timescale 1ns / 1ps
module tb;
reg clk;
reg reset;
wire [31:0] fib_out;
fibonacci DUT (.clk (clk), .reset (reset), .fib_out (fib_out));
always #2 clk = ~clk;
initial begin
clk = 0;
reset = 0;
#4 reset = 1;
#200 $finish;
end
endmodule
