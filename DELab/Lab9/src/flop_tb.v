`timescale 1ns/1ps
module flop_tb;
reg clk;
reg [3:0] d;
wire [3:0] q;
flop uut(
.clk(clk),
.d(d),
.q(q)
);
always #10 clk = ~ clk;
initial begin
clk = 1;
d = 4'b0000;
#10 d = 11;
#20 d = 12;
#35 d = 13;
end
endmodule