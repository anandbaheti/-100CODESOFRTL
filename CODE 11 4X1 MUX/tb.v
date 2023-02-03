`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2023 07:07:26 PM
// Design Name: 
// Module Name: tb
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


module tb;
reg [3:0] I0;
    reg [3:0] I1;
    reg [3:0] I2;
    reg [3:0] I3;
   reg [1:0] s;
    wire [3:0] y;
    
    mux4_1 dut(.I0(I0),.I1(I1),.I2(I2),.I3(I3),.y(y),.s(s));
    initial 
    
    begin
    s=2'b00;I0=4'b1010;I1=4'b1010;I2=4'b1010;I3=4'b1010;
    #10 s=2'b01;I0=4'b1010;I1=4'b1111;I2=4'b1010;I3=4'b1010;
    #10 s=2'b10;I0=4'b1010;I1=4'b1010;I2=4'b1100;I3=4'b1010;
    #10 s=2'b11;I0=4'b1000;I1=4'b0010;I2=4'b1110;I3=4'b1010;
        
    end
    initial 
    
    #40 $finish;
endmodule
