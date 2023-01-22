`timescale 1ns / 1ps



module halfadder_beh_tb;
reg a;
reg b;
wire s;
wire c;
halfadder_beh uut(.s(s),.c(c),.a(a),.b(b));
initial begin

a=1'b0;b=1'b0;
#10 a=1'b0;b=1'b1;
#10 a=1'b1;b=1'b0;
#10 a=1'b1;b=1'b1;
#10 a=1'b0;b=1'b1;
#10 a=1'b1;b=1'b0;
#10 a=1'b1;b=1'b1;
end

initial #100 $finish;
endmodule