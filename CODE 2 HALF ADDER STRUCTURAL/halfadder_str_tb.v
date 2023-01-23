`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/23/2023 09:39:24 AM
// Design Name: 
// Module Name: halfadder_str_tb
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


module halfadder_str_tb;
reg a;
reg b;
// Outputs
wire s;
wire c;
// Instantiate the Unit Under Test (UUT)
halfadder_str uut(
.s (s),
.c (c),
.a (a),
.b (b)
);
initial
begin
a = 1'b0;b=1'b0;
#10 a =1'b0;b=1'b1;
#10 a = 1'b1;b=1'b0;
#10 a = 1'b1;b=1'b1;

end
initial
#40 $finish;


endmodule
