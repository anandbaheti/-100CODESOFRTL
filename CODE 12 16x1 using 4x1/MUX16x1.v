`timescale 1ns / 1ps

module MUX16x1 (A,S,out);
input [15:0] A;
input [3:0] S ;
output out;

wire [3:0] k;

mux4_1 M1(A[3:0],S[1:0],k[0]);
mux4_1 M2(A[7:4],S[1:0],k[1]);
mux4_1 M3(A[11:8],S[1:0],k[2]);
mux4_1 M4(A[15:12],S[1:0],k[3]);
mux4_1 M5(k[3:0],S[3:2],out);

endmodule
module mux4_1(in,sel,out);
input [3:0] in;
input [1:0] sel;
output reg out;

always @ (*)
begin
    case(sel)
    2'b00:out=in[0];
    2'b01:out=in[1];
    2'b10:out=in[2];
    2'b11:out=in[3];
endcase
end
endmodule