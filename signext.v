`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:04:20 01/01/2018 
// Design Name: 
// Module Name:    signext 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module signext(
    input [15:0] imm16,
    input extop,
    output reg [31:0] imm32
    );
	 always @ * begin
		if(extop==1)begin
			imm32 = {{16{imm16[15]}},imm16};
		end
		else if(extop==0)begin
			imm32 = {16'b0000000000000000,imm16};
		end
	 end


endmodule
