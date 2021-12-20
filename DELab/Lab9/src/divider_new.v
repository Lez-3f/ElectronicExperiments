module divider_new(
input clk,
input reset,
output reg clk_div
);
reg [27:0] div_reg;
always @ (posedge clk, posedge reset)
if (reset) 
begin
div_reg <= 0;
clk_div <= 0;
end
else 
begin
if (div_reg < 3125000)
div_reg <= div_reg + 1;
else
begin
div_reg <= 0;
clk_div <= ~ clk_div;
end
end
endmodule
