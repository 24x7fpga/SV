//Test program

`include "environment.sv"

program test(intf i_intf);

  environment env;	//class handle
  
  initial begin
    env = new(i_intf);	//class object
    env.run();		//class task
  end
  
endprogram
