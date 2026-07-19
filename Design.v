`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.07.2026 18:45:06
// Design Name: 
// Module Name: RAM_8by8
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


module RAM_8by8(input clk, rst, w_enb,
input [3:0]w_addr, [7:0] data_in, output [3:0] rd_addr, reg[7:0] data_out );
reg [7:0] mem [7:0];


integer i;

//logic

always@(posedge clk or rst)
    begin
        if(rst) begin
            for(i=0; i <7; i = 1+1)
            mem[i] = 0; 
            end
        else if(w_enb)
        begin
            mem[w_addr] <= data_in; 
            end
        else if(w_enb ==0)
        begin
        data_out <= mem[rd_addr];
        end 
           end 

endmodule
