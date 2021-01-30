`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:25:58 01/01/2018 
// Design Name: 
// Module Name:    mux32_3_2_3 
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
module mux32_3_2_3(
	 input [31:0] a,
    input [31:0] b,
    input [31:0] c,
    input [1:0] sel,
    output reg [31:0] y
    );
	 always @ * begin
		case(sel)
		2'b00:begin
			y = a;
		end
		2'b01:begin
			y = b;
		end
		2'b10:begin
			y = c;
		end
		default:begin
			y = 0;
		end
		endcase
	 end
    


endmodule
