`timescale 1ns / 1ps

module updown_counter(data_in,reset_n,ld,U_D,clk,count);
input reset_n,ld,U_D,clk;
input [2:0] data_in;
output reg [2:0] count;

always@(posedge clk or posedge reset_n)
begin
if(reset_n)
count<=3'b000;
else if(ld)
count<=data_in;
else 
 begin
        if(U_D)
        count<=count+1'b1;
        else 
        count<=count-1'b1; 
    end
end
endmodule
