`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2024 11:36:08 PM
// Design Name: 
// Module Name: tff
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


module tff(
    input clk,
    input rst,
    input t,
    output reg q
    );
    always@(posedge clk)
    begin
    if(!rst)
    q<=0;
    else
    if(t)
    q<=~q;
    else
    q<=q;
    end
    
endmodule
