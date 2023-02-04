`timescale 1ns / 1ps


module testbench;
reg [15:0] A;
reg [3:0] S;
wire out;

MUX16x1 uut(.A(A),.S(S),.out(out));

initial 
begin 
          A=16'haaaa;S=4'b0000;
      #10 A=16'haaaa;S=4'd1;
      #10 A=16'haaaa;S=4'd2;
      #10 A=16'haaaa;S=4'd3;
      #10 A=16'haaaa;S=4'd4;
      #10 A=16'haaaa;S=4'd5;
      #10 A=16'haaaa;S=4'd6;
      #10 A=16'haaaa;S=4'd7;
      #10 A=16'haaaa;S=4'd8;
      #10 A=16'haaaa;S=4'd9;
      #10 A=16'haaaa;S=4'd10;
      #10 A=16'haaaa;S=4'd11;
      #10 A=16'haaaa;S=4'd12;
      #10 A=16'haaaa;S=4'd13;
      #10 A=16'haaaa;S=4'd14;
      #10 A=16'haaaa;S=4'd15;
 
 end
 initial 
 #170 $finish;
endmodule
