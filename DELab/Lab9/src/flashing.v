module flashing(
    input clk,
    input reset,
    output reg[3:0]clk_div
);

reg [27:0] div1_reg;
reg [27:0] div2_reg;
reg [27:0] div3_reg;
reg [27:0] div4_reg;
always @ (posedge clk, posedge reset)
if (reset) 
begin
    div1_reg <= 0;
    div2_reg <= 0;
    div3_reg <= 0;
    div4_reg <= 0;
    clk_div <= 0;
end

else
begin

if (div1_reg < 12500000)
    div1_reg <= div1_reg + 1;
else
begin
    div1_reg <= 0;
    clk_div[0] <= ~ clk_div[0];
end

if (div2_reg < 6250000)
    div2_reg <= div2_reg + 1;
else
begin
    div2_reg <= 0;
    clk_div[1] <= ~ clk_div[1];
end

if (div3_reg < 3125000)
    div3_reg <= div3_reg + 1;
else
begin
    div3_reg <= 0;
    clk_div[2] <= ~ clk_div[2];
end

if (div4_reg < 1562500)
    div4_reg <= div4_reg + 1;
else
begin
    div4_reg <= 0;
    clk_div[3] <= ~ clk_div[3];
end

end

endmodule