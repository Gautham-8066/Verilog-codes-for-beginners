`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/16/2024 04:40:58 PM
// Design Name: 
// Module Name: mux_16_1
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


module mux_16_1(
input wire [15:0]I,
input wire [3:0]S,
output wire Y
    );
wire [7:0]first_layer;
wire [3:0]second_layer;
wire [1:0]third_layer;

mux_2_1 mux0(.I0(I[0]),.I1(I[1]),.S0(S[0]),.y(first_layer[0]));
mux_2_1 mux1(.I0(I[2]),.I1(I[3]),.S0(S[0]),.y(first_layer[1]));
mux_2_1 mux2(.I0(I[4]),.I1(I[5]),.S0(S[0]),.y(first_layer[2]));
mux_2_1 mux3(.I0(I[6]),.I1(I[7]),.S0(S[0]),.y(first_layer[3]));
mux_2_1 mux4(.I0(I[8]),.I1(I[9]),.S0(S[0]),.y(first_layer[4]));
mux_2_1 mux5(.I0(I[10]),.I1(I[11]),.S0(S[0]),.y(first_layer[5]));
mux_2_1 mux6(.I0(I[12]),.I1(I[13]),.S0(S[0]),.y(first_layer[6]));
mux_2_1 mux7(.I0(I[14]),.I1(I[15]),.S0(S[0]),.y(first_layer[7]));

//second layer
mux_2_1 mux8(.I0(first_layer[0]),.I1(first_layer[1]),.S0(S[1]),.y(second_layer[0]));
mux_2_1 mux9(.I0(first_layer[2]),.I1(first_layer[3]),.S0(S[1]),.y(second_layer[1]));
mux_2_1 mux10(.I0(first_layer[4]),.I1(first_layer[5]),.S0(S[1]),.y(second_layer[2]));
mux_2_1 mux11(.I0(first_layer[6]),.I1(first_layer[7]),.S0(S[1]),.y(second_layer[3]));

//third layer
mux_2_1 mux12(.I0(second_layer[0]),.I1(second_layer[1]),.S0(S[2]),.y(third_layer[0]));
mux_2_1 mux13(.I0(second_layer[2]),.I1(second_layer[3]),.S0(S[2]),.y(third_layer[1]));

//fourth layer
mux_2_1 mux14(.I0(third_layer[0]),.I1(third_layer[1]),.S0(S[3]),.y(Y));



endmodule
