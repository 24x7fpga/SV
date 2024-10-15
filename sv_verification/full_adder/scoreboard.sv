//Scoreboard class

//1. Compares the results with refernce model
//2. Reference model is declared here for this example

class scoreboard;
  
  logic sum;
  logic carry;
  
  transaction trans;	//handle for transaction class
  
  mailbox mon2scb;	//declare mailbox to transfer info from monitor to scoreboard
  
  event ev;
  
  function new(mailbox mon2scb);	
    this.mon2scb=mon2scb;
  endfunction
  
  task main();
    forever
      begin        
        mon2scb.get(trans);  	//receive the info from monitor
        
        trans.display("SCR");
        
        sum = ((trans.a ^ trans.b) ^ trans.c);
        carry = ((trans.a & trans.b) || (trans.b & trans.c) || (trans.c & trans.a));
        
        if( (sum == trans.s) && (carry == trans.co) )	//verfication
            $display("Verification Passed! :)");
          else
            $error("Verification Failed! :(");
        
        $display("-----------------------");
		->ev;
      end
  endtask
  
endclass
