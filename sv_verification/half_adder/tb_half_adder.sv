module tb_half_adder; 
 
  /*AUTOREG*/ 
  /*AUTOWIRE*/ 
  // Beginning of automatic wires (for undeclared instantiated-module outputs)
  wire			c;			// From DUT of half_adder.v
  wire			s;			// From DUT of half_adder.v
  // End of automatics
 
  intf i_intf();	//interface handle
  
  test t1(i_intf);	//connect test class handle to interface
  
  half_adder DUT (/*AUTOINST*/
		  // Outputs
		  .s			(i_intf.s),
		  .c			(i_intf.c),
		  // Inputs
		  .a			(i_intf.a),
		  .b			(i_intf.b));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
 
endmodule 
// Local Variables: 
// verilog-library-directories:("~/Projects/FPGA_Projects/SystemVerilog_Verification/sv_verification/half_adder" ".") 
// End:

