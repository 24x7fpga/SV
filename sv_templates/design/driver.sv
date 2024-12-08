class driver;

   virtual intf vif;               // virtual interface

   mailbox gen2drv;                // handle for mailbox

   transaction trans;              // handle for transaction class, to receive data from mailbox

   function new (virtual intf vif, mailbox gen2drv);
      this.vif = vif;
      this gen2drv = gen;
   endfunction // new

   task main;
      forever
	begin
	   gen2drv.get(trans);     // receiver data from generator

	   // Connect signals
	   // eg. =>vif.a <= trans.a;

	   trans.DISP("DRV");
	end
   endtask // main

endclass // driver

	   
