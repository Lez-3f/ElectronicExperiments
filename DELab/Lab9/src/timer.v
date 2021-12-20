module timer (
    input clk,
    input reset,

    output reg[3:0] dig,
    output reg[7:0] segments
);

reg [31:0] cnt; //1Hz计数
reg [31:0] cnt_k;   //1kHz计数
reg clk_1kHz;
reg [3:0] sec_0;
reg [3:0] sec_1;

initial 
begin
    cnt = 0;
    cnt_k = 0;
    clk_1kHz = 0;
    sec_0 = 0;
    sec_1 = 0;
end

/* 1秒计数 */
always @ (posedge clk, posedge reset) 
begin
    if (reset) 
    begin
        cnt <= 0;
        sec_0 <= 0;
        sec_1 <= 0;
    end
    else 
    begin
        if (cnt < 25_000_000)
            cnt <= cnt + 1;
        else
        begin
            cnt <= 0;
            sec_0 <= sec_0 + 1;
        end

        if (sec_0 > 9)
        begin
            sec_0 <= 0;
            sec_1 <= sec_1 + 1;
        end
        
        if (sec_1 > 5)
        begin
            sec_1 <= 0;
        end
    end
end

/* 产生1kHz频率 */
always @ (posedge clk, posedge reset)
if (reset) 
    begin
    cnt_k <= 0;
    clk_1kHz <= 0;
    end
else 
    begin
    if (cnt_k < 12_500)
    cnt_k <= cnt_k + 1;
    else
        begin
        cnt_k <= 0;
        clk_1kHz <= ~ clk_1kHz;
    end
end

/* 显示时钟 */
reg [7:0] seg_set[15:0];   //储存各个数字对应的引脚设置
reg switch;

initial
begin
    seg_set[0] = 8'hc0;
    seg_set[1] = 8'hf9;
    seg_set[2] = 8'ha4;
    seg_set[3] = 8'hb0;
    seg_set[4] = 8'h99;
    seg_set[5] = 8'h92;
    seg_set[6] = 8'h82;
    seg_set[7] = 8'hf8;
    seg_set[8] = 8'h80;
    seg_set[9] = 8'h90;
    seg_set[10] = 8'h88;
    seg_set[11] = 8'h83;
    seg_set[12] = 8'hc6;
    seg_set[13] = 8'ha1;
    seg_set[14] = 8'h86;
    seg_set[15] = 8'h8e;
end

always @(*) begin
    dig <= (clk_1kHz) ? 4'b1110 : 4'b1101;
    segments <= (clk_1kHz) ? seg_set[sec_0] : seg_set[sec_1];
end

endmodule