
module ascii_4_ints (
    input wire rst,
    input wire next,
    output reg overflow = 1'b0,
    output reg [7:0] value0 = 8'h30,
    output reg [7:0] value1 = 8'h30,
    output reg [7:0] value2 = 8'h30,
    output reg [7:0] value3 = 8'h30
);

wire overflow_0;
wire [7:0] value_0;

ascii_int aii_0(
    .rst(rst),
    .next(next),
    .overflow(overflow_0),
    .value(value_0)
    );

assign next_1 = overflow_0;
wire overflow_1;
wire [7:0] value_1;

ascii_int aii_1(
    .rst(rst),
    .next(next_1),
    .overflow(overflow_1),
    .value(value_1)
    );

assign next_2 = overflow_1;
wire overflow_2;
wire [7:0] value_2;

ascii_int aii_2(
    .rst(rst),
    .next(next_2),
    .overflow(overflow_2),
    .value(value_2)
    );

assign next_3 = overflow_2;
wire overflow_3;
wire [7:0] value_3;

ascii_int aii_3(
    .rst(rst),
    .next(next_3),
    .overflow(overflow_3),
    .value(value_3)
    );

always @(posedge next)
begin
    overflow <= overflow_3;
    
    value0 <= value_0;
    value1 <= value_1;
    value2 <= value_2;
    value3 <= value_3;

end

endmodule
