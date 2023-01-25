`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2023 12:06:53 PM
// Design Name: 
// Module Name: fa_str_tb
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


module fa_str_tb;
reg a;
reg b;
reg c_in;
// Outputs
wire sum;
wire c_out;
// Instantiate the Unit Under Test (UUT)
fa_str uut(
.sum (sum),
.c_out (c_out),
.a (a),
.b (b),
.c_in(c_in)
);
initial
begin
a = 1'b0;b=1'b0;c_in=1'b0;
#10 a =1'b0;b=1'b0;c_in=1'b1;
#10 a = 1'b0;b=1'b1;c_in=1'b0;
#10 a = 1'b1;b=1'b1;c_in=1'b1;
#10 a = 1'b1;b=1'b0;c_in=1'b0;
#10 a = 1'b1;b=1'b0;c_in=1'b1;
#10 a = 1'b1;b=1'b1;c_in=1'b0;
#10 a = 1'b1;b=1'b1;c_in=1'b1;
end
initial #90 $finish;

endmodule
