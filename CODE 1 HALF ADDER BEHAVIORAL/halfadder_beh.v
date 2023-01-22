`timescale 1ns / 1ps
// Module Name: halfadder_beh


module halfadder_beh(s,c,a,b

    );
    input a,b;
    output reg s,c;
    always@(*)
    begin
    s=a^b;
    c=a&b;
    end
endmodule
