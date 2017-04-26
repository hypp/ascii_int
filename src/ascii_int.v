
module ascii_int (
    input wire rst,
    input wire next,
    output reg overflow = 1'b0,
    output reg [7:0] value = 8'h30
);

always @(posedge next)
begin
    overflow <= overflow;
    value <= value;
    
    if (rst)
    begin
        value <= 8'h30;
    end
    else
    begin
        if (next)
        begin
            if (value == 8'h39)
            begin
                value <= 8'h30;
                overflow <= 1'b1; 
            end
            else
            begin
                value <= value + 8'h1;
                overflow <= 1'b0; 
            end
        end        
    end
end

endmodule
