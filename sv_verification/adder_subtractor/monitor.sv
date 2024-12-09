class monitor #(parameter N = 4);

   virtual intf #(N) vif;                     // virtual interface

   mailbox #(transaction #(N))  mon2scb;      // mailbox for receive data from mon to scb

   transaction #(N) trans;                    // handle for transaction class

  function new (virtual intf #(N) vif, mailbox #(transaction #(N)) mon2scb);
      this.vif     = vif;
      trans        = new();   
      this.mon2scb = mon2scb;
   endfunction // new

   task main;
      forever begin
	 #2;

	 // receive data
	 trans.a   = vif.a;
	 trans.b   = vif.b;
	 trans.ci  = vif.ci;

	 trans.sum = vif.sum;
	 trans.co  = vif.co;
	 
	 mon2scb.put(trans);   // put the data to the mailbox of transaction class
	 trans.DISP("MON");
      end
   endtask // main

endclass // monitor

	   
