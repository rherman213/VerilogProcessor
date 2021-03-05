`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2020 06:27:26 PM
// Design Name: 
// Module Name: ControlUnit
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


module ControlUnit(Opcode, func, wreg, m2reg, wmem, aluc, aluimm);

//inputs - operation code
input[5:0] Opcode;
input[5:0] func;  //Only needed for R-type
//outputs - RegWrite, MemtoReg, MemWrite, AlucCode (lw - 0010), aluimm
output reg [1:0] wreg;
output reg [1:0] m2reg;
output reg [1:0] wmem;
output reg [3:0] aluc;
output reg [1:0] aluimm;

always @ (*)
begin 
case (Opcode)

//lw case
6'b100011: begin
    wreg = 1;
    m2reg = 1;
    wmem = 0;
    aluc = 4'b0010; //ALU OPCode 2b'00 = 0010 (from table)
    aluimm = 1;
end
endcase

//other cases would go below

end
endmodule
