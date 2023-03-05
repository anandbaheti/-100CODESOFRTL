`timescale 1ns / 1ps
`timescale 1ns / 1ps

module testbench();
    reg [2:0] d;
    reg load_en, clk, reset_n;
    wire [2:0] q;
    
    downcounter_3bit uut (.d(d), .load_en(load_en),.clk(clk), .reset_n(reset_n),.q(q));
    always #5 clk=~clk;
    initial begin
        d = 3'b111;
        load_en = 1;
        clk = 0;
        reset_n = 0;
    #10 reset_n=1;load_en = 0;
        

 

      #100  $finish;
    end


endmodule
