`timescale 1ns / 1ps


module testbench();
reg clk,reset_n;
wire [3:0] count;
johnson_counter dut(.clk(clk),.reset_n(reset_n),.count(count));
always #5 clk=~clk;
 initial begin
 clk=0;
 reset_n=0;
 #5 reset_n=1;
  #80 $finish();
 
 end
endmodule