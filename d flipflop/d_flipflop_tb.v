`timescale 1ns/1ps

module d_flipflop_tb;

    reg clk;
    reg reset;
    reg d;
    wire q;

    // Instantiate D Flip-Flop
    d_flipflop uut (
        .clk(clk),
        .reset(reset),
        .d(d),
        .q(q)
    );

    // Clock generation
    always #5 clk = ~clk;

    // Test sequence
    initial begin
        clk = 0;
        reset = 1;
        d = 0;

        #10;
        reset = 0;

        #10 d = 1;
        #10 d = 0;
        #10 d = 1;
        #10 d = 1;
        #10 d = 0;

        #10 $finish;
    end

    // Display values
    initial begin
        $monitor("Time=%0t | Reset=%b | D=%b | Q=%b",
                 $time, reset, d, q);
    end

endmodule
