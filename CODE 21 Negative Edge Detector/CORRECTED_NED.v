`timescale 1ns / 1ps
module NED(
    input signal,
    input clk,
    output detect
    );
    
    reg signalafterdelay;
    
    always@(posedge clk)
    begin
    signalafterdelay<=signal;
    end
    assign detect = signalafterdelay & ~signal;
endmodule
