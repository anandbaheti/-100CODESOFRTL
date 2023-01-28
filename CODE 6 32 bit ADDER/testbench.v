
`timescale 1ns / 1ps


module testbench;

reg [31:0] a;
 reg [31:0] b;
 wire [31:0] sum;
 
 adder_32 uut(.a(a),.b(b),.sum(sum),.carry_out(carry_out));
 
 initial
        begin
       a=32'd0 ;b=32'd1;
  #5  a=32'd25 ;b=32'd49;
  #5  a=32'd650 ;b=32'd1000;
  #5  a=32'd7000 ;b=32'd15000;
  #5  a=32'd150 ;b=32'd300;
  #5  a=32'd6758 ;b=32'd2112;
  #5  a=32'd5678 ;b=32'd1342;
  
      
         end
  initial
   #50 $finish() ;
endmodule
