`timescale 1 ns/1 ps

module ascii_int_tb();

reg tb_clk;
reg tb_rst;

reg tb_next_0;
wire tb_overflow_0;
wire [7:0] tb_value_0;

ascii_int aii_0(
    .rst(tb_rst),
    .next(tb_next_0),
    .overflow(tb_overflow_0),
    .value(tb_value_0)
    );

assign tb_next_1 = tb_overflow_0;
wire tb_overflow_1;
wire [7:0] tb_value_1;

ascii_int aii_1(
    .rst(tb_rst),
    .next(tb_next_1),
    .overflow(tb_overflow_1),
    .value(tb_value_1)
    );

assign tb_next_2 = tb_overflow_1;
wire tb_overflow_2;
wire [7:0] tb_value_2;

ascii_int aii_2(
    .rst(tb_rst),
    .next(tb_next_2),
    .overflow(tb_overflow_2),
    .value(tb_value_2)
    );

assign tb_next_3 = tb_overflow_2;
wire tb_overflow_3;
wire [7:0] tb_value_3;

ascii_int aii_3(
    .rst(tb_rst),
    .next(tb_next_3),
    .overflow(tb_overflow_3),
    .value(tb_value_3)
    );

initial
begin
	tb_clk <= 1'b0;
	tb_rst <= 1'b0;
	tb_next_0 <= 1'b0;
end

// Toggle clock every 50 nanoseconds
always
begin
	#50 tb_clk <= ~tb_clk;
end

always
begin
	#100 tb_next_0 <= 1'b1;
	#10 tb_next_0 <= 1'b0;
end

endmodule
