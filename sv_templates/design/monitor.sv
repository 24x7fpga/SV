class monitor;

   virtual intf vif;          // virtual interface

   mailbox mon2scb;           // mailbox for receive data from mon to scb

   transaction trans;         // handle for transaction class

   function new (virtual intf vif, mailbox mon2scb);
      this.vif     = vif;
      trans        = new();   
      this.mon2scb = new();
   endfunction // new

   task main;
      forever begin
	 #2;

	 // receive data

	 mon2scb.put(trans);   // put the data to the mailbox of transaction class
	 trans.DISP("MON");
      end
   endtask // main

endclass // monitor

	   
