module line_following_robot (
    input  left_sensor,
    input  right_sensor,
    input  reset,

    output reg left_motor,
    output reg right_motor,

    output reg [1:0] direction
);

    // Direction codes
    // 00 = STOP
    // 01 = FORWARD
    // 10 = LEFT
    // 11 = RIGHT

    always @(*) begin

        if (reset) begin
            left_motor  = 1'b0;
            right_motor = 1'b0;
            direction   = 2'b00;
        end

        else begin

            case ({left_sensor, right_sensor})

                // No line detected
                2'b00: begin
                    left_motor  = 1'b0;
                    right_motor = 1'b0;
                    direction   = 2'b00;
                end

                // Both sensors detect line
                2'b11: begin
                    left_motor  = 1'b1;
                    right_motor = 1'b1;
                    direction   = 2'b01;
                end

                // Left sensor detects line
                2'b10: begin
                    left_motor  = 1'b0;
                    right_motor = 1'b1;
                    direction   = 2'b10;
                end

                // Right sensor detects line
                2'b01: begin
                    left_motor  = 1'b1;
                    right_motor = 1'b0;
                    direction   = 2'b11;
                end

                default: begin
                    left_motor  = 1'b0;
                    right_motor = 1'b0;
                    direction   = 2'b00;
                end

            endcase
        end

    end

endmodule