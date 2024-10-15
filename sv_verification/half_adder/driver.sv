//Driver class

//1. Receive the info from GEN via a mailbox
//2. Send them to the Interface using virtual interface

class driver;
  
  virtual intf vif;		//vif is the handle of virtual interface
  
  mailbox gen2drv;		//handle of the mailbox
  
  transaction trans;		//handle of transaction class, to get the data from mailbox
  
  function new (virtual intf vif, mailbox gen2drv);
    this.vif = vif;
    this.gen2drv = gen2drv;
  endfunction
  
  task main;
    forever
      begin
        gen2drv.get(trans);	//receive the info from generator
        
        vif.a <= trans.a;	//sample the input for the virtual interface
        vif.b <= trans.b;
        
        trans.s = vif.s;	//sample the output from the virtual interface
        trans.c = vif.c;	//sampling the output may not be required here
        
        trans.DISP("DRV");
      end
  endtask
  
endclass
    
