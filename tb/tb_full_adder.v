`timescale 1ns / 1ps

module tb_full_adder;

    // 1. Declare inputs as reg and outputs as wire
    reg t_a;
    reg t_b;
    reg t_cin;
    
    wire t_sum;
    wire t_cout;

    // 2. Instantiate the Design Under Test (DUT)
    full_adder uut (
        .a(t_a),
        .b(t_b),
        .cin(t_cin),
        .sum(t_sum),
        .cout(t_cout)
    );

    // 3. Apply Stimulus
    initial begin
        // Setup console truth table
        $display("========================================");
        $display("Time\tA B Cin | Sum Cout");
        $display("========================================");
        
        $monitor("%0tns\t%b %b  %b  |  %b   %b", $time, t_a, t_b, t_cin, t_sum, t_cout);

        // Exhaustive test covering all 8 possible input combinations
        t_a=0; t_b=0; t_cin=0; #10;
        t_a=0; t_b=0; t_cin=1; #10;
        t_a=0; t_b=1; t_cin=0; #10;
        t_a=0; t_b=1; t_cin=1; #10;
        t_a=1; t_b=0; t_cin=0; #10;
        t_a=1; t_b=0; t_cin=1; #10;
        t_a=1; t_b=1; t_cin=0; #10;
        t_a=1; t_b=1; t_cin=1; #10;

        $display("========================================");
        $display("Full Adder Simulation Complete.");
        
        // Use $stop instead of $finish so the GUI doesn't close on you!
        $stop; 
    end

endmodule