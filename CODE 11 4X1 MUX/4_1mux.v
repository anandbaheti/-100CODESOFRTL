`timescale 1ns / 1ps




module mux4_1(
    input [3:0] I0,
    input [3:0] I1,
    input [3:0] I2,
    input [3:0] I3,
    input [1:0] s,
    output reg [3:0] y
    );
    
   always @(*)
   begin
   case(s)
   2'b00:y=I0;
   2'b01:y=I1;
   2'b10:y=I2;
   2'b11:y=I3;
   endcase
    end
endmodule
