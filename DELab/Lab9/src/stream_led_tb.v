`timescale 1ns/1ps
module stream_led_tb;

reg clk;
reg reset;
reg sel;
wire [7:0]led_io;

stream_led uut(
	.clk(clk),
	.reset(reset),
	.sel(sel),
	.led_io(led_io)
);
always #1 clk = ~clk;
always #100000000 sel = ~sel;
initial begin
    clk = 1;
    reset = 1;
    sel  = 1;
    #2;
    reset = 0;
end

endmodule
