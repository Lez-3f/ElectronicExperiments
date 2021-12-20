`timescale 1ns/1ps
module divider_new_tb;
reg clk;
reg reset;
wire clk_div;

divider_new uut(
    .clk(clk),
    .reset(reset),
    .clk_div(clk_div)
);
always #10 clk = ~clk;
initial begin
    clk = 1;
    reset = 1;
    #20 reset = 0;
end
endmodule