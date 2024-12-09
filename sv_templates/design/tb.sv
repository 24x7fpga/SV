`include "interface.sv"
`include "test.sv"

module tb_$ARG;

   parameter T = 8             // clk period is 8ns => 125MHz
   parameter N = 1;            // bus width

   logic     clk;
   
   // clock generation
   always #(T/2) clk = (clk === 1'b0);
   
   intf #(N) i_intf(clk);      // handle for interface

   test #(N) t1 (i_intf);      // connect test class to handle interface

   <module_name> (/*AUTOINSTPARAM*/) DUT (/*AUTOINST*/);

   initial begin
      $dumpfile("tb_$ARG.vcd");
      $dumpvars(0,tb_$ARG);
   end

endmodule // tb_$ARG
// Local Variables:
// Verilog-Library-Directories: (".")
// End:
