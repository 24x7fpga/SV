class driver #(parameter N = 4);

   virtual intf #(N) vif;                  // virtual interface

   mailbox #(transaction #(N))  gen2drv;   // handle for mailbox

   transaction #(N) trans;                 // handle for transaction class, to receive data from mailbox

  function new (virtual intf #(N) vif, mailbox #(transaction #(N)) gen2drv);
      this.vif = vif;
      this.gen2drv = gen2drv;
   endfunction // new

   task main;
      forever
	begin
	   gen2drv.get(trans);     // receiver data from generator

	   // Connect signals
	   vif.a <= trans.a;
	   vif.b <= trans.b;
	   vif.ci<= trans.ci;

	   trans.DISP("DRV");
	end
   endtask // main

endclass // driver

	   
