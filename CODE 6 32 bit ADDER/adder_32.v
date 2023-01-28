`timescale 1ns / 1ps



module adder_32(a,b,sum,carry_out);
parameter N=32;
input [N-1:0] a,b;
output[N-1:0] sum;
output carry_out;
wire [N-1:0] carry;

genvar i;
generate
for(i=0;i<N;i=i+1)
begin 
if(i==0)
halfadder_beh g1(.a(a[0]),.b(b[0]),.c(carry[0]),.s(sum[0]));
else

 fa_str g2(.sum(sum[i]),.c_out(carry[i]),.a(a[i]),.b(b[i]),.c_in(carry[i-1]));
 
  assign carry_out = carry[N-1];
end
endgenerate
endmodule
module halfadder_beh(s,c,a,b);
    input a,b;
    output reg s,c;
    always@(*)
    begin
    s=a^b;
    c=a&b;
    end
endmodule

module fa_str(sum,c_out,a,b,c_in);
    input a,b,c_in;
    output sum,c_out;
    wire t1,t2,k;
    xor g1(t1,a,b);
    xor g2(sum,t1,c_in);
    and g3(t2,t1,c_in);
    and g4(k,a,b);
    or g5(c_out,k,t2);
endmodule