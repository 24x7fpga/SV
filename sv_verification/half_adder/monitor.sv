//Monitor class

//1. Sample the inputs and outputs 


class monitor;
  
  virtual intf vif;		//declare virtual interface
  
  mailbox mon2scb;		//declare mailbox to transfer info from monitor to scoreboard
  
  transaction trans;		//handle for transaction class
  
  function new (virtual intf vif, mailbox mon2scb);	
    this.vif = vif;
    trans = new();
    this.mon2scb = mon2scb;     //constructor or create an object for transaction class
    
  endfunction
  
  task main;			
    forever
    	begin
          #3;			//sample after 3 ns
          
          trans.a = vif.a;	//send the data from virtual interface to monitor
          trans.b = vif.b;
          
          trans.s = vif.s;
          trans.c = vif.c;
          
          mon2scb.put(trans);	//put the info to send to scoreboard
          
          trans.DISP("MON");
          
    end
  endtask
  
endclass
