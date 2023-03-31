`timescale 1ns / 1ps
module divide_by_2(clk_out,clk,rst);
input clk,rst;
output reg clk_out;
initial begin
 clk_out = 0;
 end
 always @(posedge clk ) 
 begin
    if (rst)
    begin
    clk_out <= 0;
    end
  else 
    begin
    clk_out <= ~clk_out;
    end
 end

endmodule

