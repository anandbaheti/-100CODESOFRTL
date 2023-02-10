`timescale 1ns / 1ps

module sipo_4bit_tb;

reg clk, reset;
reg ser_in;
wire [3:0] q;

sipo_4bit uut(clk, reset, ser_in, q);

initial 
begin
clk = 0;
reset = 0;
ser_in = 0;
#2 ser_in = 1;
#2 ser_in = 0;
#2 ser_in = 1;
#2 ser_in = 0;
#2 ser_in = 1;
#2 ser_in = 0;
#2 ser_in = 1;
#2 ser_in = 0;
#2 ser_in = 1;
#2 ser_in = 0;
end

always #2 clk = ~clk;

initial
 begin
#100 $finish;
end

endmodule