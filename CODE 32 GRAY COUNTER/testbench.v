`timescale 1ns / 1ps

module gray_counter_tb;
  reg clk;
  reg rst;
  reg ld;
  reg [3:0] data_in;

  wire [3:0] count;
  
  gray_counter uut (
    .clk(clk),
    .rst(rst),
    .ld(ld),
    .data_in(data_in),
    .count(count)
  );
 always #5 clk=~clk; 
 initial 
 begin
 clk=0;rst=1;data_in=4'b0000;ld=0;
 #5 rst=0;ld=1;
 #5 ld=0;
 
 
 
 
 
 #200 $finish();
 end
 
endmodule
