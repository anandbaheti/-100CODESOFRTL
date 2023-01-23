`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 1/23/2023 09:36:41 AM
// Design Name: 
// Module Name: halfadder_str
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


module halfadder_str(a,b,c,s

    );
    input a,b;
    output s,c;
    
    xor (s,a,b);
    and (c,a,b);
endmodule
