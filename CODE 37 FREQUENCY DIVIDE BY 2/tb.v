`timescale 1ns / 1ps


module tb();
reg clk, rst;
wire clk_out;
divide_by_2 dut (.clk(clk),.rst(rst),.clk_out(clk_out));
always #5 clk=~clk;
initial 
begin
    clk = 0;rst = 1;
    #5 rst=0;
   #100 $finish;
end

endmodule




