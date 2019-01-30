module mux2x1(out, a, b, s);
input a, b, s;
output out;
wire and_1, and_2, n_s;
and(and_1, a, s);
not(n_s, s);
and(and_2, n_s, b);
or(out, and_1, and_2);
endmodule