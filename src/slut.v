`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:31:43 05/27/2018 
// Design Name: 
// Module Name:    slut 
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
module slut(address,data,EN,clk);
input [1:0] address;
output [31:0] data;
input EN,clk;
reg [31:0] mem[3:0];
reg [31:0] temp=32'd0;
initial begin
	$readmemb("lutsin.txt",mem);
end
always @(posedge clk) begin
	if(EN) begin
		temp<=mem[address];
	end
	else begin
		temp<=temp;
	end
end
assign data=temp;
endmodule
