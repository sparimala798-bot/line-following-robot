`timescale 1ns/1ps

module line_following_robot_tb;

    reg left_sensor;
    reg right_sensor;
    reg reset;

    wire left_motor;
    wire right_motor;
    wire [1:0] direction;

    // Instantiate Line Following Robot
    line_following_robot uut (
        .left_sensor(left_sensor),
        .right_sensor(right_sensor),
        .reset(reset),
        .left_motor(left_motor),
        .right_motor(right_motor),
        .direction(direction)
    );

    initial begin

        $display("LEFT RIGHT RESET | LEFT_MOTOR RIGHT_MOTOR | DIRECTION");
        $display("-------------------------------------------------------");

        // Reset
        reset = 1;
        left_sensor = 0;
        right_sensor = 0;
        #10;

        $display("  %b     %b     %b   |     %b          %b       |    %b",
                 left_sensor, right_sensor, reset,
                 left_motor, right_motor, direction);

        // No line
        reset = 0;
        left_sensor = 0;
        right_sensor = 0;
        #10;

        $display("  %b     %b     %b   |     %b          %b       |    %b",
                 left_sensor, right_sensor, reset,
                 left_motor, right_motor, direction);

        // Left sensor detects line
        left_sensor = 1;
        right_sensor = 0;
        #10;

        $display("  %b     %b     %b   |     %b          %b       |    %b",
                 left_sensor, right_sensor, reset,
                 left_motor, right_motor, direction);

        // Right sensor detects line
        left_sensor = 0;
        right_sensor = 1;
        #10;

        $display("  %b     %b     %b   |     %b          %b       |    %b",
                 left_sensor, right_sensor, reset,
                 left_motor, right_motor, direction);

        // Both sensors detect line
        left_sensor = 1;
        right_sensor = 1;
        #10;

        $display("  %b     %b     %b   |     %b          %b       |    %b",
                 left_sensor, right_sensor, reset,
                 left_motor, right_motor, direction);

        $finish;

    end

endmodule