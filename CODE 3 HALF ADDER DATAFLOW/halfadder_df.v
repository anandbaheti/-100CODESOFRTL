`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/24/2022 09:15:47 AM
// Design Name: 
// Module Name: halfadder_df
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


module halfadder_df(a,b,s,c);
    input a,b;
    output s,c;
    assign s=a^b;
    assign c=a&b;
    
endmodule
