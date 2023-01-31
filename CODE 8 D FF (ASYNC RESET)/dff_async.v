`timescale 1ns / 1ps



module dff_async(
    input data_in,
    input clk,
    input rst_n,
    output reg qout
    );
    always @ (posedge clk or negedge rst_n)
    begin
    if(!rst_n)
    qout<=1'b0;
    else 
    qout <=data_in;
    end
endmodule
