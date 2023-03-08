`timescale 1ns / 1ps
module updown_counter_tb();
   reg reset_n, ld, U_D, clk;
   reg [2:0] data_in;
   wire [2:0] count;

   updown_counter uut(.data_in(data_in),.reset_n(reset_n),.ld(ld),
      .U_D(U_D),.clk(clk),.count(count));
      always #5 clk = ~clk;
      initial begin
      reset_n = 1;ld = 0;U_D = 0; clk = 0;
      data_in = 3'b000;
      #5 reset_n = 0;
      #5 ld = 1;
      #5 ld = 0;
      #40 U_D = 1;
      #40 $finish;
      
      
   end
endmodule
