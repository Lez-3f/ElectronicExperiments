module led_control(
input clk,
input reset,
output reg [3:0] led_io
);
reg [1:0] state,nextstate;
parameter S0 = 2'b00,S1 = 2'b01,S2 = 2'b10,S3 = 2'b11;
//state register
always @ (posedge clk, posedge reset)
if (reset) state <= S0;
else state <= nextstate;

//next state logic
always @ (*)
case (state)
S0: begin
led_io = 4'b0001;
nextstate = S1;
end
S1: begin
led_io = 4'b0010;
nextstate = S2;
end
S2: begin
led_io = 4'b0100;
nextstate = S3;
end
S3: begin
led_io = 4'b1000;
nextstate = S0;
end
default: nextstate = S0;
endcase

endmodule
