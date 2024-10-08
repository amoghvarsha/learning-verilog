
/*
    URL: https://hdlbits.01xz.net/wiki/Vector5
*/

module top_module
(
    input a, b, c, d, e,
    output [24:0] out
);

    // The output is XNOR of two vectors created by 
    // concatenating and replicating the five inputs.
    
    wire [4:0] rep = {a, b, c, d, e};

    assign out = ~{ {5{a}}, {5{b}}, {5{c}}, {5{d}}, {5{e}} } ^ { {5{rep}} };

endmodule
