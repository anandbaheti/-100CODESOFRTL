`timescale 1ns / 1ps
module gray_counter(clk,data_in,ld,rst, count);
 input clk, rst,ld;
 input [3:0] data_in;
 output reg [3:0] count;

 reg q0, q1, q2; 
 reg [3:0] temp; 

 always @ (posedge clk)
 begin
  if (rst)
  begin
   temp <= 4'b0;
   {q0,q1,q2}<=3'b000;
   count <= 4'b0;
 end
 else if(ld)
 begin
 temp <=data_in;
 {q0,q1,q2}<={data_in[2],data_in[1],data_in[0]};
 count<={data_in[3],data_in[2],data_in[1],data_in[0]};
 end
 
 else
   begin
   temp <= temp + 1'b1;
   q2 <= temp[3] ^ temp[2];
   q1 <= temp[2] ^ temp[1];
   q0 <= temp[1] ^ temp[0];
   count = {temp[3], q2, q1, q0};
 end
 end
endmodule