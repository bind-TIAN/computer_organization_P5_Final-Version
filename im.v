`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:54:09 01/01/2018 
// Design Name: 
// Module Name:    im 
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
module im(
    input [31:0] pc,////
    output [31:0] code
    );
	 reg [31:0] rom [1023:0];
	 integer i = 0;
	 initial begin
		for(i=0;i<1024;i=i+1)begin
			rom[i] = 0;
		end
		$readmemh("code.txt",rom);
	 end
	 assign code = rom[pc[11:2]];


endmodule
