`timescale 1ns/1ns

module up_down_comparator (
    input  wire        clock,
    input  wire        reset,    // active low reset
    input  wire [3:0]  beforeIn,
    input  wire [3:0]  afterIn,
    output reg         isUp
);

    always @(posedge clock or negedge reset) begin
        if (!reset) begin
            isUp <= 1'b0;
        end else begin
            if (afterIn > beforeIn)
                isUp <= 1'b1;
            else
                isUp <= 1'b0;
        end
    end

endmodule
