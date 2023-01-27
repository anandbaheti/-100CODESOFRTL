`timescale 1ns / 1ps


module testbench;
reg a,b,cin;
wire sum,cout;

full_adder dut(a,b,cin,sum, cout);

initial
begin
a = 1'b0;b=1'b0;cin=1'b0;
#10 a =1'b0;b=1'b0;cin=1'b1;
#10 a = 1'b0;b=1'b1;cin=1'b0;
#10 a = 1'b1;b=1'b1;cin=1'b1;
#10 a = 1'b1;b=1'b0;cin=1'b0;
#10 a = 1'b1;b=1'b0;cin=1'b1;
#10 a = 1'b1;b=1'b1;cin=1'b0;
#10 a = 1'b1;b=1'b1;cin=1'b1;
end
initial #80 $finish;
endmodule
