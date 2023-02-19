`timescale 1ns / 1ps

module tb();
 reg [7:0] In;
 reg en;
 
 wire [2:0] Y;
 
  encoder_8x3 dut (.In(In),.en(en),.Y(Y));
    initial 
    begin
    en=1'b0; In =8'b00000000;
    #10 en = 1'b1;
    #10 In =8'b00000001 ;
    #10 In =8'b00000010 ;
    #10 In =8'b00000100 ;
    #10 In =8'b00001000 ;
    #10 In =8'b00010000 ;
    #10 In =8'b00100000 ;
    #10 In =8'b01000000 ;
    #10 In =8'b10000000 ;
  end
  initial
  begin
  #100 $finish;
   $monitor("Input: %b, Output: %b", In, Y);
   end
endmodule
