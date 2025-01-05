`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2024 07:23:40 PM
// Design Name: 
// Module Name: fadder
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


module full_adder (
input a, input B, input cin, output sum, output cout
);
wire w1, w2, w3, w4, w5;
mux_2_1 mux1(a,~a,b,w1);
mux_2_1 mux2(w1,~w1,cin,sum);
mux_2_1 mux3(1'b0,1'b1,a&b,w2);
mux_2_1 mux4(1'b0,1'b1,cin&wl,w3);
mux_2_1 mux5(w2,w3,w3,cout);
endmodule
