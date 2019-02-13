`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2019 15:42:13
// Design Name: 
// Module Name: mux4x1_simple_tb
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

`include "mux4x1_simple.v"
module mux4x1_simple_tb;
wire t_out;
reg t_a, t_b, t_c, t_d, t_s1, t_s0;
mux4x1_simple mux4x1_simple_inst( .a(t_a), .b(t_b), .c(t_c), .d(t_d), .s1(t_s1), .s2(t_s0), .o(t_out) );
initial
    begin
    // 1
    t_a = 1'b1;
    t_b = 1'b0;
    t_c = 1'b1;
    t_d = 1'b1;
    t_s0 = 1'b0;
    t_s1 = 1'b1;
    #5 //2
    t_a = 1'b0;
    t_b = 1'b1;
    t_c = 1'b0;
    t_d = 1'b0;
    t_s0 = 1'b0;
    t_s1 = 1'b1;
    #5 //3
    t_a = 1'b0;
    t_b = 1'b0;
    t_c = 1'b1;
    t_d = 1'b0;
    t_s0 = 1'b1;
    t_s1 = 1'b0;
    #5 //4
    t_a = 1'b0;
    t_b = 1'b0;
    t_c = 1'b0;
    t_d = 1'b1;
    t_s0 = 1'b1;
    t_s1 = 1'b1;
    #5 //5
    t_a = 1'b1;
    t_b = 1'b0;
    t_c = 1'b0;
    t_d = 1'b0;
    t_s0 = 1'b0;
    t_s1 = 1'b0;
    
    $dumpfile("power_test.vcd");
    $dumpvars();
    end
endmodule