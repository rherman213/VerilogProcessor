`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2020 07:54:59 PM
// Design Name: 
// Module Name: Mux
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


module Mux(rd, rt, selector, out);

input [4:0] rd, rt;
input [1:0] selector;
output reg [4:0] out;

//mux on selector
always @ (selector or rd or rt)
begin
    out = (selector) ? rd : rt;
end
endmodule
