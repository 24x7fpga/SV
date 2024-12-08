`include "environment.sv"

program test(intf i_intf);

   environment env;

   initial begin
      env = new(i_intf);   // class object with interface as arg
      env.run();           // run task from env 
   end

endprogram // test
   
