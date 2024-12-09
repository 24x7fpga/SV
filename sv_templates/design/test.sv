`include "environment.sv"

program test #(parameter N = 1) (intf i_intf);

   environment #(N) env;

   initial begin
      env = new(i_intf);   // class object with interface as arg
      env.run();           // run task from env 
   end

endprogram // test
