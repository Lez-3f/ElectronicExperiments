module sled_control_1(
input clk,
input reset,
output reg [7:0] led_io
);
reg [2:0] state,nextstate;
parameter 
S0 = 3'b000, S1 = 3'b001,S2 = 3'b010,S3 = 3'b011,
S4 = 3'b100, S5 = 3'b101,S6 = 3'b110,S7 = 3'b111;
//state register
always @ (posedge clk, posedge reset)
if (reset) state <= S0;
else state <= nextstate;

//next state logic
always @ (*)
case (state)
S0: begin
led_io = 8'b00000001;
nextstate = S1;
end
S1: begin
led_io = 8'b00000010;
nextstate = S2;
end
S2: begin
led_io = 8'b00000100;
nextstate = S3;
end
S3: begin
led_io = 8'b00001000;
nextstate = S4;
end
S4: begin
led_io = 8'b00010000;
nextstate = S5;
end
S5: begin
led_io = 8'b00100000;
nextstate = S6;
end
S6: begin
led_io = 8'b01000000;
nextstate = S7;
end
S7: begin
led_io = 8'b10000000;
nextstate = S0;
end
default: nextstate = S0;
endcase

endmodule
