//Monitor class

//1. Sample the inputs and outputs 

class monitor;
  
  virtual intf vif;	//declare virtual interface
  
  transaction trans;	//handle for transaction class
  
  mailbox mon2scb;	 //declare mailbox to transfer info from monitor to scoreboard
  
  function new(virtual intf vif, mailbox mon2scb);	//pass from environment class
    this.vif=vif;
    this.mon2scb=mon2scb;
    trans = new();	 //constructor or create an object for transaction class
  endfunction
  
  task main();	
    forever
      begin
        #2;
        trans.a = vif.a;	//send the data from virtual interface to monitor
        trans.b = vif.b;
        trans.c = vif.c;
        
        trans.s = vif.s;
        trans.co= vif.co;
        
        trans.display("MON");
        
        mon2scb.put(trans);	//put the info to send to scoreboard
        
      end
  endtask
  
endclass
  
