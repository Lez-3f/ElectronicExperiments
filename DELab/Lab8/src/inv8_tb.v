`timescale 1ns/1ps
module inv8_tb;
reg [0:7]x;
wire [0:7]y;

inv8 uut(.x(x),.y(y));

initial begin
x = 8'b01001101;
#10;
x = 8'b11100010;
#10; 
end

endmodule
