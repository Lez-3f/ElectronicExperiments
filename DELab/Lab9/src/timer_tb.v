`timescale 1ns/1ps
module timer_tb;

reg clk;
reg reset;
wire [3:0] dig;
wire [7:0] segments;

timer uut(
	.clk(clk),
    .reset(reset),
	.dig(dig),
    .segments(segments)
);
always #1 clk = ~clk;
initial begin
    clk = 1;
    reset = 1;
    #2;
    reset = 0;
end

endmodule