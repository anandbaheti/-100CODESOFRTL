`timescale 1ns / 1ps


module aluTest;

reg [31:0]in1,in2;
reg [3:0]opcode;

wire [31:0]alu_out;
wire parity_flag,zero_flag,sign_flag,carry_flag ;

 ALU_32bit dut(in1,in2,opcode,alu_out,parity_flag,zero_flag,sign_flag,carry_flag );


initial
 begin : random_inputs 

  in1 = 32'd32;
  in2 = 32'd20;
    opcode = 4'd0;   
    #10; opcode = 4'd1;  
    #10; opcode = 4'd2;   
    #10; opcode = 4'd3;   
    #10; opcode = 4'd4;   
    #10; opcode = 4'd5; 
    #10; opcode = 4'd6;  
    #10; opcode = 4'd7;  
    #10; opcode = 4'd8;  
    #10; opcode = 4'd9;  
    #10; opcode = 4'd10; 
    #10; opcode = 4'd11;  
    #10; opcode = 4'd12;  
    #10; opcode = 4'd13; 
    #10; opcode = 4'd14;
    #10; opcode = 4'd15; 
  


   #10 $finish ;
 end
endmodule