module full_adder(
    input a, b, c,
    output sum, carry
);

wire w1, w2, w3;
xor(w1, a, b);
and(w2, a, b);
xor(sum, w1, c);
and(w3, c, w1);
or(carry, w2, w3);
endmodule