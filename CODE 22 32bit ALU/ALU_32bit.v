`timescale 1ns / 1ps


module ALU_32bit(
   input [31:0]in1,in2,
   input [3:0]opcode,
   output reg[31:0]alu_out,
   output parity_flag,zero_flag,sign_flag,carry_flag );

wire [32:0]temp;

assign parity_flag = ~^alu_out ;                            //xnor of all the bits of alu_out
assign zero_flag = (alu_out == 0) ;                     //should be high if all bits are zero
assign sign_flag = alu_out[31] ;                //the MSB bit
assign carry_flag = temp[32] ;                      //if any overflow occurs

assign temp = in1 + in2 ;

always @(*)
  begin
   case(opcode) 
     4'b0000 : alu_out =  in1 + in2 ;       //add in1 and in2
     4'b0001 : alu_out =  in1 - in2 ;       //substract in1 and in2
     4'b0010 : alu_out =  in1 * in2 ;       //mul in1 and in2
     4'b0011 : alu_out =  in1 & in2 ;       //AND in1 and in2
     4'b0100 : alu_out = ~(in1 & in2);      //NAND in1 and in2
     4'b0101: alu_out =  in1 | in2 ;         //OR in1 and in2
     4'b0110 : alu_out = ~in1;                 // NOT in1 and in2
     4'b0111 : alu_out = ~(in1 ^ in2);          //XNOR in1 and in2
     4'b1000 : alu_out =  {in1[30:0],1'b0} ;    //ZERO PAD FROM LEFT (LEFT SHIFT BY 1)
     4'b1001 : alu_out =  {1'b0,in1[31:1]} ;      // ZERO PAD FROM RIGHT (RIGHT SHIFT BY 1) 
     4'b1010 : alu_out =  {in1[31],in1[31:1]} ;    //ARITHMETIC RIGHT SHIFT
     4'b1011 : alu_out =  {in1[30:0],in1[0]} ;      //ARITHMETIC LEFT SHIFT
     4'b1100 : alu_out =  in1 - 1 ;                 // DECREMENT THE INP
     4'b1101 : alu_out = in1 + 1 ;              //INCREMENT THE INPUT
     4'b1110 : alu_out =  (in1 > in2) ;         //IF IN1 GREATER THAN IN2 RETURNS 1
     4'b1111 : alu_out =  (in1 < in2 ) ;       //IF IN1 LESSER THAN IN2 RETURNS 1
    default: alu_out =  in1 ;
   endcase
 end
endmodule  