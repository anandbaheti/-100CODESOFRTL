`timescale 1ns / 1ps


module testbench;
reg [3:0] gray;
wire [3:0] binary;

gray_to_binary uut(.binary(binary),.gray(gray));

initial 
begin
gray=4'b0000;
#2 gray=4'b0001;
#2 gray=4'b0011;
#2 gray=4'b0010;
#2 gray=4'b0110;
#2 gray=4'b0111;
#2 gray=4'b0101;
#2 gray=4'b0100;
#2 gray=4'b1100;
#2 gray=4'b1111;
#2 gray=4'b1110;
#2 gray=4'b1010;
#2 gray=4'b1011;
#2 gray=4'b1001;
#2 gray=4'b1000;
#2 $finish;
end
initial
begin
$monitor("gray = %b , binary = %b ",gray,binary);
end
endmodule
