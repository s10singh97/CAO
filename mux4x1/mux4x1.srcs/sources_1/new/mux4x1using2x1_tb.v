`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2019 16:29:25
// Design Name: 
// Module Name: mux4x1using2x1_tb
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

`include "mux4x1.v"
module mux4x1using2x1_tb;
    wire t_out;
    reg t_a, t_b, t_c, t_d, t_s1, t_s0;
    mux4x1 mux4x1_inst( .i0(t_a), .i1(t_b), .i2(t_c), .i3(t_d), .s1(t_s1), .s0(t_s0), .out(t_out) );
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
