class scoreboard;

   event ev;                    // event to generate next transaction
 
   mailbox mon2scb;             // mailbox to receive data from mon 

   transaction trans;           // handle for transaction class

   function new (mailbox mon2scb);
      this.mon2scb = mon2scb;
   endfunction // new

   task main;
      forever begin
	 mon2scb.get(trans);    // get data from mon
	 trans.DISP("SCB");

	 // logic for verification


	 $display("-----------------------");
	 ->ev;                   // trigger the event to proceed to next stimulus
      end
   endtask // main

endclass // scoreboard

	 
	 
   
