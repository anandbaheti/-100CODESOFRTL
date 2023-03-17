`timescale 1ns / 1ps
module testbench();
reg clock;
wire [0:2] light;
lamp_fsm dut(.clock(clock),.light(light));
always #5 clock=~clock;
initial 
begin

clock=1'b0;
#100 $finish();
end
initial
$monitor($time,"RGB=%b",light);
endmodule
