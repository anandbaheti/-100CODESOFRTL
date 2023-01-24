`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/23/2022 09:20:11 PM
// Design Name: 
// Module Name: halfadder_df_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module halfadder_df_tb;
reg a;
reg b;
wire s;
wire c;
halfadder_df uut(
.s (s),.c (c),.a (a),.b (b));
initial
begin
a = 1'b0;b=1'b0;
#10 a =1'b0;b=1'b1;
#10 a = 1'b1;b=1'b0;
#10 a = 1'b1;b=1'b1;
#10 a = 1'b0;b=1'b0;
#10 a = 1'b0;b=1'b1;
#10 a = 1'b1;b=1'b0;
#10 a = 1'b1;b=1'b1;
end
initial
#90 $finish;
endmodule
