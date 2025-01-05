`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/16/2024 11:59:02 PM
// Design Name: 
// Module Name: mux_2_1_
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


module mux_2_1_(
    input wire I0,
    input wire I1,
    input wire S0,
    output reg Y
    );
    always@(*)
    begin
    if(S0==0)
    Y=I0;
    else
    Y=I1;
    end
endmodule