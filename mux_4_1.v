`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/28/2024 07:37:05 PM
// Design Name: 
// Module Name: mux_4_1
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


module mux_4_1(
    input wire [3:0]I,
    input wire [1:0]S,
    output wire Y

    );
    wire [1:0]first_layer;
    mux_2_1 mux0(.I0(I[0]),.I1(I[1]),.S0(S[0]),.y(first_layer[0]));
    mux_2_1 mux1(.I0(I[2]),.I1(I[3]),.S0(S[0]),.y(first_layer[1]));
    mux_2_1 mux2(.I0(first_layer[0]),.I1(first_layer[1]),.S0(S[1]),.y(Y));
endmodule
