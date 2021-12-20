module divider(
input clk,
input reset,
output clk_div
);
reg [7:0] div_reg;
assign clk_div = div_reg[
1];
always @ (posedge clk, posedge reset)
if (reset) div_reg <= 0;
else div_reg <= div_reg + 1;
endmodule
