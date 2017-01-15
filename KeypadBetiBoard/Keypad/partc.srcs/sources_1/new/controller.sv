`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2016 01:52:54 PM
// Design Name: 
// Module Name: controller
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


module controller(input logic clk,
                  input logic rst,
                  output logic [3:0] row);
                  
         logic [26:0] counter, nextcount;
         
         always_ff@(posedge clk)
         if(rst) counter <= 0;
         else counter = nextcount;
        
         always_comb
         nextcount = counter +1;
         
         always_comb
         begin
         if(counter < 16777216)      row = 4'b0001;
         else if(counter < 33554432) row = 4'b0010;
         else if(counter < 50331648) row = 4'b0100;
         else if(counter < 67108864) row = 4'b1000;
         end
endmodule
