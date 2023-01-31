`timescale 1ns / 1ps

module testbench;
reg data_in;
    reg clk;
    reg rst_n;
   wire qout;
   
   dff_async uut(.data_in(data_in),.clk(clk),.rst_n(rst_n),.qout(qout));
   
    always #5 clk=~clk;
    
    
   initial
   begin
   clk=0;
   rst_n=0;
   data_in=1;
   
   #10 rst_n=1;
   #5 data_in=0;
    #5 data_in=1;
   
   end
   initial
   #50 $finish();
endmodule
