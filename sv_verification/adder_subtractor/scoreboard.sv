class scoreboard #(parameter N = 4);

   event ev;                               // event to generate next transaction
 
   mailbox #(transaction #(N)) mon2scb;    // mailbox to receive data from mon 

   transaction #(N) trans;                 // handle for transaction class
   

  function new (mailbox #(transaction #(N)) mon2scb);
      this.mon2scb = mon2scb;
   endfunction // new

   task main;
      forever begin
	 mon2scb.get(trans);               // get data from monitor
	 trans.DISP("SCB");

	 // logic for verification
	 if(trans.ci)begin
        if(trans.a + trans.b == {trans.co, trans.sum})
	      $display("Verification Passed! :)");
	    else
	      $display("Verification Passed! :)");
	 end else begin
        if(trans.a - trans.b == {trans.co, trans.sum})
	      $display("Verification Passed! :)");
	    else
	      $display("Verification Passed! :)");
	 end // else: !if(trans.ci)   

	 $display("-----------------------");
	 ->ev;                              // trigger the event to proceed to next stimulus
      end
   endtask // main

endclass // scoreboard

	 
	 
   
