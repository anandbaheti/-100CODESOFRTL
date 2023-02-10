`timescale 1ns / 1ps





module sipo_4bit(input clk, input reset, input ser_in, output reg [3:0] q);

reg [3:0] d;

always @ (posedge clk) begin
if (reset) begin
d <= 0;
end else begin
d <= {d[2:0],ser_in};
end
end

always @(*)
q <= d;


endmodule