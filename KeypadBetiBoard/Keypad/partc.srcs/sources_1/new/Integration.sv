`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2016 02:24:27 PM
// Design Name: 
// Module Name: integration
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


module integration(input logic CLK,
                             input logic [3:0] Digit_In,
                             input logic SysReset,
                             input logic PCclear, 
                             output logic [6:0] seg,
                             output logic [3:0] an,
                             output logic dp);
    logic clock_pulse;
    logic [3:0]enable;  
    logic [3:0]dig3,dig2 ,dig1 ,dig0;
    assign dig3 = 4'b1110;   
    assign dig2 = 4'b0000;
    assign dig1 = 4'b0000;
    //assign dig0[3:0] = Digit_In[3:0]; 
                
    pulse_controller  pulse1(CLK, SysReset, PCclear , clock_pulse);
    
    always_ff @(posedge CLK)
        if(clock_pulse==1)
            dig0=4'b0000;
        else    
        dig0[3:0] = Digit_In[3:0];
        
    timer tim1(CLK, enable);
    display_controller disp1(CLK, SysReset,enable, dig3, dig2, dig1, dig0,  an, seg, dp);
    
 
   //assign anode[2:1]= 2'b11; 
   //assign anode[3] = enable;
endmodule 
