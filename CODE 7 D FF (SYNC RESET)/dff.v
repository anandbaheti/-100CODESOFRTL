`timescale 1ns / 1ps

module dff_sync(d,clk,rst,q );
input d,clk,rst;
output reg q;

always @(posedge clk)
begin
        if(rst)
        q<=1'b0;
        else
        q<= d;
end

endmodule
