`timescale 1ns / 1ps


module johnson_counter(
    input clk,
    input reset_n,
    output reg [3:0] count
    );
    always @ (posedge clk or negedge reset_n)
    begin
    if(~reset_n)
    count<=4'b0000;
    else 
  
count<={{count[2:0]},{~count[3]}};
    end
endmodule

