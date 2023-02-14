`timescale 1ns / 1ps


module pipo_tb();

reg [3:0] pin;
reg clk, rst;
wire [3:0] pout;

pipo uut (
  .pin(pin),
  .pout(pout),
  .clk(clk),
  .rst(rst)
);

initial begin
  clk = 0;
  forever #2 clk = ~clk;
end

initial begin
  rst = 1;
  #10 rst = 0;
end

initial begin
  pin = 4'b0000;
  #4 pin = 4'b0001;
  #4 pin = 4'b0010;
  #4 pin = 4'b0011;
  #4 pin = 4'b0100;
  #4 pin = 4'b1000;
  #4 pin = 4'b1010;
  #4 pin = 4'b1001;
  #4 pin = 4'b1100;
  $finish();
end

endmodule