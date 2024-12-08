module tb_$ARG;

   /*AUTOREG*/
   /*AUTOWIRE*/

   intf i_intf();         // handle for interface

   test t1 (i_intf);      // connect test class to handle interface

   $ARG DUT(/*AUTOINST*/);

   initial begin
      $dumpfile("tb_$ARG.vcd");
      $dumpvars(0,tb_$ARG);
   end

endmodule // tb_$ARG
// Local Variables:
// Verilog-Library-Directories: (".")
// End:
