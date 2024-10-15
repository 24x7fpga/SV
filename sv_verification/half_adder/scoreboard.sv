//Scoreboard class

//1. Compares the results with refernce model
//2. Reference model is declared here for this example

class scoreboard;
  
  event ev;            //Create event to trigger the next stimulus in generator class
  
  mailbox mon2scb;     //Create a mailbox: sending info from Monitor to Scoreboard
  
  transaction trans;   //Create an handle of the transaction class
  
  function new (mailbox mon2scb);
    this.mon2scb = mon2scb;
  endfunction
  
  task main;
    forever
      begin  
        mon2scb.get(trans);
        
        trans.DISP("SCR");
        
        if( ((trans.a ^ trans.b) == trans.s) && ((trans.a & trans.b) == trans.c) )
          $display("Verification Passed! :)");
        else
          $error("Verification Failed! :(");
        
        $display("-----------------------");
	->ev;    	// trigger an event to proceed to the next stimulus
      end
  endtask
  
endclass
    
