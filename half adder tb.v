`timescale 1ns/1ps

module half_adder_tb;

    reg x, y;
    wire s, c;

    half_adder uut (
        .x(x),
        .y(y),
        .s(s),
        .c(c)
    );

    initial begin
$dumpfile("half_adder.vcd");
$dumpvars(0, half_adder_tb);
      

        $monitor("Time=%0t | x=%b y=%b | s=%b c=%b",
                 $time, x, y, s, c);

        x = 0; y = 0;
        #10;

        x = 0; y = 1;
        #10;

        x = 1; y = 0;
        #10;

        x = 1; y = 1;
        #10;

        $finish;
    end

endmodule
  
