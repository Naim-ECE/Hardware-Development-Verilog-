module half_adder
(input wire a, b, 
output wire s, Cout);

    assign s = a ^ b;
    assign Cout = a & b;

endmodule