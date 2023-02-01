`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/24/2023 11:11:49 PM
// Design Name: 
// Module Name: FPA_TB
// Project Name: 
// Target Devices: 
// Tool Versions
// 
//////////////////////////////////////////////////////////////////////////////////


module FPA_TB(); 
wire [3:0] GNT;

reg [3:0] REQ;
reg clk,reset ;

FPA dut(.GNT(GNT),.REQ(REQ),.clk(clk),.reset(reset));

initial
clk=0;
always #4 clk <= ~clk ;

initial 
begin
reset =0;
#4 reset =1;
repeat(20)
begin
#5  REQ<=$random();

end
#100 $finish();
end
initial begin
$monitor("REQ=%b,GNT=%b,reset=%b",REQ,GNT,reset);
end
endmodule
