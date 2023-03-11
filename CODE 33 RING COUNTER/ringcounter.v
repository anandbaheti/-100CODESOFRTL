`timescale 1ns / 1ps

module ringcounter(
    input clk,
    input set,
    output reg [3:0] count
    );
    always @ (posedge clk)
    begin
    if(set)
    count<=4'b1000;
    else 
    begin
    count<=(count<<1);
    count[0]<=count[3];
    end
    end
endmodule
