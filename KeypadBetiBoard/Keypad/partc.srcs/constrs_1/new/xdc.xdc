# Clock signal 
set_property PACKAGE_PIN W5 [get_ports clk]  	 	 	 	  
 	set_property IOSTANDARD LVCMOS33 [get_ports clk] 
# Buttons 
set_property PACKAGE_PIN U18 [get_ports {rst}]                          
    set_property IOSTANDARD LVCMOS33 [get_ports {rst}] 
# Switches 
    set_property PACKAGE_PIN V17 [get_ports {PCclear}]                          
         set_property IOSTANDARD LVCMOS33 [get_ports {PCclear}]     
##Sch name = JB1                   
         set_property IOSTANDARD LVCMOS33 [get_ports {columnin[0]}] 
    ##Sch name = JB2 
    set_property PACKAGE_PIN A16 [get_ports {columnin[1]}]                      
         set_property IOSTANDARD LVCMOS33 [get_ports {columnin[1]}] 
    ##Sch name = JB3 
    set_property PACKAGE_PIN B15 [get_ports {columnin[2]}]                      
         set_property IOSTANDARD LVCMOS33 [get_ports {columnin[2]}]
    ##Sch name = JB4 
    set_property PACKAGE_PIN B16 [get_ports {columnin[3]}]                      
         set_property IOSTANDARD LVCMOS33 [get_ports {columnin[3]}] 
    ##Sch name = JB7 
    set_property PACKAGE_PIN A15 [get_ports {row[0]}]                      
         set_property IOSTANDARD LVCMOS33 [get_ports {row[0]}] 
    ##Sch name = JB8 
    set_property PACKAGE_PIN A17 [get_ports {row[1]}]                      
         set_property IOSTANDARD LVCMOS33 [get_ports {row[1]}] 
    ##Sch name = JB9 
    set_property PACKAGE_PIN C15 [get_ports {row[2]}]                      
         set_property IOSTANDARD LVCMOS33 [get_ports {row[2]}] 
    ##Sch name = JB10  
    set_property PACKAGE_PIN C16 [get_ports {row[3]}]                      
         set_property IOSTANDARD LVCMOS33 [get_ports {row[3]}] 
# LEDs 
         set_property PACKAGE_PIN U16 [get_ports {led[0]}]                      
              set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}] 
         set_property PACKAGE_PIN E19 [get_ports {led[1]}]                      
              set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}] 
         set_property PACKAGE_PIN U19 [get_ports {led[2]}]                      
              set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}] 
         set_property PACKAGE_PIN V19 [get_ports {led[3]}]                      
              set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
              

#7 segment display 
set_property PACKAGE_PIN W7 [get_ports {seg[0]}]                          
    set_property IOSTANDARD LVCMOS33 [get_ports {seg[0]}] 
set_property PACKAGE_PIN W6 [get_ports {seg[1]}]                          
    set_property IOSTANDARD LVCMOS33 [get_ports {seg[1]}] 
set_property PACKAGE_PIN U8 [get_ports {seg[2]}]                          
    set_property IOSTANDARD LVCMOS33 [get_ports {seg[2]}] 
set_property PACKAGE_PIN V8 [get_ports {seg[3]}]                          
    set_property IOSTANDARD LVCMOS33 [get_ports {seg[3]}] 
set_property PACKAGE_PIN U5 [get_ports {seg[4]}]                          
    set_property IOSTANDARD LVCMOS33 [get_ports {seg[4]}] 
set_property PACKAGE_PIN V5 [get_ports {seg[5]}]                          
    set_property IOSTANDARD LVCMOS33 [get_ports {seg[5]}] 
set_property PACKAGE_PIN U7 [get_ports {seg[6]}]                          
    set_property IOSTANDARD LVCMOS33 [get_ports {seg[6]}] 
set_property PACKAGE_PIN V7 [get_ports dp]                       
    set_property IOSTANDARD LVCMOS33 [get_ports dp] 
set_property PACKAGE_PIN U2 [get_ports {an[0]}]                          
    set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}] 
set_property PACKAGE_PIN U4 [get_ports {an[1]}]                          
    set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}] 
set_property PACKAGE_PIN V4 [get_ports {an[2]}]                          
    set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}] 
set_property PACKAGE_PIN W4 [get_ports {an[3]}]                          
    set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]  
         
set_property PACKAGE_PIN V14 [get_ports {error}]  	 	 	 	 
                   set_property IOSTANDARD LVCMOS33 [get_ports {error}] 
                   
set_property LOC A14 [get_cells {columnin_IBUF[0]_inst}]
                   set_property PULLDOWN true [get_ports {columnin[3]}]
                   set_property PULLDOWN true [get_ports {columnin[2]}]
                   set_property PULLDOWN true [get_ports {columnin[1]}]
                   set_property PULLDOWN true [get_ports {columnin[0]}]
