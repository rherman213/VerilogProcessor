`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2020 01:20:58 AM
// Design Name: 
// Module Name: ALU
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


module ALU(a,b,aluc,r);
    input [31:0] a,b;
    input [3:0] aluc;
    output reg [31:0] r;
    
    always @ (aluc, b, a)
        begin
            //setting up add (0010) because its lw only
            case(aluc)
                 4'b0010: begin
                 r= a + b;
                 end
           endcase
       end
       
endmodule
