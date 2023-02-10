`timescale 1ns / 1ps

module testbench();
reg d,clk;
wire q;
siso a(d, clk, q);
initial
begin
$monitor($time,"d=%b,clk=%b,q=%b",d,clk,q);
end
initial
begin
clk=1'b0;
forever #5 clk=~clk;
end
initial
begin
d=1;
#10 d=0;
#10 d=1;
#10 d=0;
#10 d=1;
#10 d=0;
#10 d=1;
#10 d=0;

#100 $finish;
end 
endmodule
