`timescale 1ns / 1ps


module upcounter_3bit(
        input [2:0] d,
        input load_en,clk,reset_n,
        output reg [2:0] q
);

always@(posedge clk or negedge reset_n)
begin
if(~reset_n)
    q<= 3'b000;
    else if(load_en)
    q<=d;
    else
    q<= q + 1'b1;
end
endmodule
