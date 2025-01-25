`include "half_adder.v"
module half_adder_tb();
  reg a, b;
  wire s, c_out;
  
  half_adder ha(a, b, s, c_out);
  
  initial begin;
    $monitor("At time %0t: a=%b b=%b, sum=%b, carry=%b",$time, a,b,s,c_out);
    $dumpfile("half_adder_tb.vcd");
    $dumpvars(0, half_adder_tb);
    a = 0; b = 0;
    #123;
    a = 0; b = 1;
    #123;
    a = 1; b = 0;
    #123;
    a = 1; b = 1;
  end;
endmodule