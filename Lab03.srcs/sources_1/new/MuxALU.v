`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2020 01:42:03 AM
// Design Name: 
// Module Name: MuxALU
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


module MuxALU(qb,imm,ealuimm,b);
    
    input [1:0] ealuimm;
    input [31:0] qb, imm;
    output [31:0] b; 
    
    //set up b
   assign b = ealuimm?imm:qb;
     

endmodule
