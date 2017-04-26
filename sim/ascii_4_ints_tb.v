`timescale 1 ns/1 ps

module ascii_4_ints_tb();

reg tb_clk;
reg tb_rst;

reg tb_next;
wire tb_overflow;
wire [7:0] tb_value_0;
wire [7:0] tb_value_1;
wire [7:0] tb_value_2;
wire [7:0] tb_value_3;

ascii_4_ints ai4i(
    .rst(tb_rst),
    .next(tb_next),
    .overflow(tb_overflow),
    .value0(tb_value_0),
    .value1(tb_value_1),
    .value2(tb_value_2),
    .value3(tb_value_3)
    );

initial
begin
    tb_clk <= 1'b0;
    tb_rst <= 1'b0;
    tb_next <= 1'b0;
end

// Toggle clock every 50 nanoseconds
always
begin
    #50 tb_clk <= ~tb_clk;
end

always
begin
    #100 tb_next <= 1'b1;
    #10 tb_next <= 1'b0;
end

endmodule
