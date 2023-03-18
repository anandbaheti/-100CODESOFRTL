`timescale 1ns / 1ps
module testbench();
reg clk,x;
wire z;
parity_generator_fsm dut(.clk(clk),.x(x),.z(z));
always #5 clk=~clk;
initial begin
clk=1'b0;
#2 x=0;#10 x =1;
#10 x =0;#10 x =1;
#10 x =0;#10 x =1;
#10 x =0;#10 x =1;
#10 x =0;#10 x =1;
#10 x =0;#10 x =1;
#10 x =0;#10 x =1;
#10$finish;
end
initial
$monitor($time,"X=%b ,Z=%b",x,z);
endmodule
