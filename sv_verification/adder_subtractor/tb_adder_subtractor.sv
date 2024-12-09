`include "interface.sv"
`include "test.sv"

module tb_adder_subtractor;

   /*AUTOREG*/
   /*AUTOWIRE*/

   parameter N = 5;
   
   intf #(N) i_intf();         // handle for interface

   test #(N) t1 (i_intf);      // connect test class to handle interface

   adder_subtractor #(/*AUTOINSTPARAM*/
		     		// Parameters
		     		.N			(N)) DUT(
					// Outputs
     				.sum		(i_intf.sum[N-1:0]),
     				.co		(i_intf.co),
					// Inputs
     				.a		(i_intf.a[N-1:0]),
     				.b		(i_intf.b[N-1:0]),
     				.ci		(i_intf.ci));

   initial begin
      $dumpfile("tb_adder_subtractor.vcd");
      $dumpvars(0,tb_adder_subtractor);
   end

endmodule // tb_adder_subtractor
// Local Variables:
// Verilog-Library-Directories: (".")
// End:
