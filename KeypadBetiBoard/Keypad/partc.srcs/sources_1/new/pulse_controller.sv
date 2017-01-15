/////////////////////////////////////////////////////////////////////////////////
// 
//   pulse_controller.sv
// 
//   Written by: Will Sawyer on 03/29/2016
// 
//   This module takes a slide switch or pushbutton input and 
//   does the following:
//     --debounces it (ignoring any addtional changes for ~40 milliseconds)
//     --synchronizes it with the clock edges
//     --produces just one pulse per push-and-release, lasting for one clock period
//   
//   Note that the 40 millisecond debounce time = 4000000 cycles of 
//   100MHz clock (which has 10 nsec period)
//   
//   sw_input: the signal coming from the slide switch or pushbutton
//   CLK: the 100 MHz system clock on the BASYS3 board
//   clk_pulse: the synchronized debounced single-pulse output
//
//////////////////////////////////////////////////////////////////////////////////

module pulse_controller(
	 input  logic CLK, sw_input, clear,
	 output logic clk_pulse );

	 logic [2:0] state, nextstate;
	 logic [21:0] CNT; 
	 logic cnt_zero; 

	always_ff @(posedge CLK)
	   if(clear)
	    	state <= 3'b000;
	   else
	    	state <= nextstate;

	always_comb
           case (state)
             3'b000: begin if (sw_input) nextstate = 3'b001; 
                              else nextstate = 3'b000; 
			   clk_pulse = 0; 
		     end	     
             3'b001: begin nextstate = 3'b010; clk_pulse = 1; end
             3'b010: begin if (cnt_zero) nextstate = 3'b011; 
                              else nextstate = 3'b010; 
			   clk_pulse = 0; 
		     end
             3'b011: begin if (sw_input) nextstate = 3'b011; 
                              else nextstate = 3'b100; 
			   clk_pulse = 0; 
		     end
             3'b100: begin if (cnt_zero) nextstate = 3'b000; 
                              else nextstate = 3'b100; 
			   clk_pulse = 0; 
		     end
            default: begin nextstate = 3'b000; clk_pulse = 0; end
          endcase

	always_ff @(posedge CLK)
	   case(state)
		3'b001: CNT <= 4000000;
		3'b010: CNT <= CNT-1;
		3'b011: CNT <= 4000000;
		3'b100: CNT <= CNT-1;
	   endcase

//  reduction operator |CNT gives the OR of all bits in the CNT register	
	assign cnt_zero = ~|CNT;

endmodule
