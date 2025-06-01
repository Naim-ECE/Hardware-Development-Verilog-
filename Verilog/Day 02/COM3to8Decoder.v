`timescale 1ns/1ns
`include "seven_seg_display.v"

module seven_seg_display_tb;
    reg [3:0] bin_in;
    wire [6:0] seg_out;

    seven_seg_display uut(bin_in, seg_out);

    initial begin
        $dumpfile("seven_seg_display_tb.vcd");
        $dumpvars(0, seven_seg_display_tb);
        
        $monitor("bin_in = %b -> seg_out = %b", bin_in, seg_out);
        
        for (bin_in = 0; bin_in < 10; bin_in = bin_in + 1) begin
            #5;
        end
        
        #10;
        $finish;
    end
endmodule