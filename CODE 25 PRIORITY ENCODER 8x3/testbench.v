`timescale 1ns / 1ps

module tb();
 reg [7:0] I;
 reg en;
 
 wire [2:0] Y;
 
  priorityencoder dut(.I(I),.en(en),.Y(Y));
    initial 
    begin
    en=1'b0; I =8'b00000000;
    #10 en = 1'b1;
    #5 I =8'b00000001 ;
    #5 I =8'b00000010 ;
    #5 I =8'b00000100 ;
    #5 I =8'b00001000 ;
    #5 I =8'b00010000 ;
    #5 I =8'b00100001 ;
    #5 I =8'b01000000 ;
    #5 I =8'b10100100 ;
    #5 I =8'b11110000 ;
    #5 I =8'b10000000 ;
    #5 I =8'b00100100 ;
    #5 I =8'b01001100 ;
    #5 I =8'b10000100 ;
    #5 I =8'b11000000 ;
    
  end
  initial
  begin
  #100 $finish;
   $monitor("Input: %b, Output: %b", I, Y);
   end
endmodule


