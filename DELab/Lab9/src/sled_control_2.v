module sled_control_2(
    input clk,
    input reset,
    output reg [7:0] led_io
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
    led_io = 8'b10000001;
    nextstate = S1;
end
S1: begin
    led_io = 8'b01000010;
    nextstate = S2;
end
S2: begin
    led_io = 8'b00100100;
    nextstate = S3;
end
    S3: begin
    led_io = 8'b00011000;
    nextstate = S0;
end
default: nextstate = S0;
endcase
endmodule
