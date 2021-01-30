`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:12:19 01/01/2018 
// Design Name: 
// Module Name:    zuoyi 
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
module zuoyi(
    input [31:0] imm32,
    output [31:0] yi32
    );
	 assign yi32 = {imm32[29:0],2'b00};


endmodule
