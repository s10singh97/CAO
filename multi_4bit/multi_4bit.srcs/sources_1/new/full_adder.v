`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2019 20:59:03
// Design Name: 
// Module Name: full_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


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
