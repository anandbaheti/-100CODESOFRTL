`timescale 1ns / 1ps

module test_demux;
reg [2:0]S;
reg A;
wire [7:0]Y;
demux_1_8 mydemux(.y(Y), .a(A), .s(S));
initial begin
A=1;
S=3'd0;
#5;
S=3'd1;
#5;
S=3'd2;
#5;
S=3'd3;
#5;
S=3'd4;
#5;
S=3'd5;
#5;
S=3'd6;
#5;
S=3'd7;
#5;
$finish;

end
endmodule