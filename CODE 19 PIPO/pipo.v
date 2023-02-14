`timescale 1ns / 1ps


module pipo(pin,pout,clk,rst );
input [3:0] pin;
input clk,rst;
output reg [3:0] pout;

always @(posedge clk)
begin
if(rst)
pout<=4'b0;
else 
pout<=pin;

end

endmodule
