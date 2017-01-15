`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2016 04:12:21 PM
// Design Name: 
// Module Name: timer
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


module timer(input logic CLK, 
             output logic [3:0]enable);
             
             logic [25:0] count, nextcount;
             
                 always_ff @(posedge CLK)
                     count <= nextcount;
             
                 always_comb
                     nextcount = count + 1;
                 always_comb
                 if(count[25:24]) enable = 4'b1001;
                 else enable = 4'b0001;
endmodule
