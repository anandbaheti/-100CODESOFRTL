`timescale 1ns / 1ps

module testbench;
reg clk,rst,d;
wire q;
dff_sync uut(.clk(clk),.d(d),.rst(rst),.q(q));

initial
begin
d=0;
clk=0;
rst=1;
end 
 always #5 clk=~clk;
 initial
 begin
 #10 rst =0;
 #10 d=1'b1;
 #10 d=1'b1;
 #10 d=1'b0;
 #10 d=1'b0;
 #10 d=1'b1;
 #10 d=1'b0;
 #10 d=1'b1;
 end
 
initial 
#100 $finish();



endmodule
