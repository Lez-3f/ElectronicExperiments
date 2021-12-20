`timescale 1ns/1ps
module flashing_tb;

reg clk;
reg reset;

wire [3:0]clk_div;

flashing uut(
	.clk(clk),
	.reset(reset),
    .clk_div(clk_div)
);

always #1 clk = ~clk;
initial begin
    clk = 1;
    reset = 1;
    #20 reset = 0;
end

endmodule