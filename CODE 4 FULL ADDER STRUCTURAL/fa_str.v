`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2023 11:53:42 AM
// Design Name: 
// Module Name: fa_str
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


module fa_str(sum,c_out,a,b,c_in);
    input a,b,c_in;
    output sum,c_out;
    wire t1,t2,k;
    xor g1(t1,a,b);
    xor g2(sum,t1,c_in);
    and g3(t2,t1,c_in);
    and g4(k,a,b);
    or g5(c_out,k,t2);
endmodule
