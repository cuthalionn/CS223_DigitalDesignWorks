`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2016 01:45:30 PM
// Design Name: 
// Module Name: _4x4_keypad_scanner
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
module _4x4_keypad_scanner(input logic clk,
                           input logic rst,
                           input logic PCclear,
                           input logic  [3:0]columnin,//RB 0-3
                           output logic [3:0]row,
                           output logic [3:0]led,
                           output logic error,
                           output logic [6:0] seg,
                           output logic [3:0] an,
                           output logic dp);
                    
                  controller c1( clk, rst, row);
                  datapath d1( clk, row, columnin, led, error);
                  integration(clk,led,rst,PCclear,seg,an,dp);       
endmodule                                   
