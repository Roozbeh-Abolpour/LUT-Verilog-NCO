`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:57:24 05/27/2018 
// Design Name: 
// Module Name:    nco 
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
module nco(inc,address,EN,clk);
input EN,clk;
input [1:0] inc;
output [1:0] address;
reg [1:0] temp=3'd0;
always @(posedge clk) begin
	if (EN) begin
		temp<=temp+inc;
	end
	else begin
		temp<=temp;
	end
end
assign address=temp;
endmodule
