class generator #(parameter N = 1);
   
   event        ev;                                   // event to generate next transaction
   
   mailbox #(transaction #(N))  gen2drv;              // handle for mailbox
   
   transaction #(N) trans;                            // handle for transaction class

  function new (mailbox #(transaction #(N))  gen2drv);
      trans        = new();                           // object
      this.gen2drv = gen2drv;         
   endfunction // new

   task main();
      // Update based on requirement
     repeat(12) begin
	  assert(trans.randomize)                    // randomize transactions
	   else                                      // verify randomization
	  $error("GEN: Randomization Failed");       // report if failed

	  // trans.randomize
	  trans.DISP("GEN");                         // display function
	  gen2drv.put(trans);                        // put transaction in the mailbox

	  @(ev);                                     // wait for the event to be trigger from Scoreboard
      end // repeat (10)
   endtask // main

endclass // generator

	 
   
   
