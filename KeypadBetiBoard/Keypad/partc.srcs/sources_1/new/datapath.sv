`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2016 01:46:45 PM
// Design Name: 
// Module Name: datapath
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


module datapath(input logic clk,
                input logic  [3:0]row,
                input logic  [3:0]columnin,
                output logic [3:0]code,
                output logic error);
                
        always_comb
        case(row)
        4'b0001: 
            case(columnin)
            4'b0000: begin code = 4'b0000; error = 1'b1; end
            4'b0001: begin code = 4'b0001; error = 1'b0; end
            4'b0010: begin code = 4'b0010; error = 1'b0; end
            4'b0100: begin code = 4'b0011; error = 1'b0; end
            4'b1000: begin code = 4'b1010; error = 1'b0; end
            default: begin code = 4'b0000; error = 1'b1; end
            endcase
       4'b0010: 
            case(columnin)
            4'b0000: begin code = 4'b0000; error = 1'b1; end
            4'b0001: begin code = 4'b0100; error = 1'b0; end
            4'b0010: begin code = 4'b0101; error = 1'b0; end
            4'b0100: begin code = 4'b0110; error = 1'b0; end
            4'b1000: begin code = 4'b1011; error = 1'b0; end
            default: begin code = 4'b0000; error = 1'b1; end
            endcase
        4'b0100: 
            case(columnin)
            4'b0000: begin code = 4'b0000; error = 1'b1; end
            4'b0001: begin code = 4'b0111; error = 1'b0; end
            4'b0010: begin code = 4'b1000; error = 1'b0; end
            4'b0100: begin code = 4'b1001; error = 1'b0; end
            4'b1000: begin code = 4'b1100; error = 1'b0; end
            default: begin code = 4'b0000; error = 1'b1; end
            endcase
         4'b1000: 
             case(columnin)
             4'b0000: begin code = 4'b0000; error = 1'b1; end
             4'b0001: begin code = 4'b1110; error = 1'b0; end
             4'b0010: begin code = 4'b0000; error = 1'b0; end
             4'b0100: begin code = 4'b1111; error = 1'b0; end
             4'b1000: begin code = 4'b1101; error = 1'b0; end
             default: begin code = 4'b0000; error = 1'b1; end
             endcase
        default:begin code = 4'b0000; error = 1'b1; end      
        endcase                                                   
endmodule
