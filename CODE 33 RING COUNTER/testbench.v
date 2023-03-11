`timescale 1ns / 1ps
module testbench();
reg clk,set;
wire [3:0] count;
ringcounter dut(.clk(clk),.set(set),.count(count));
always #5 clk=~clk;
 initial begin
 clk=0;
 set=0;
 #5 set=1;
 #5 set=0;
 #80 $finish();
 
 end
endmodule
