//Driver class

//1. Receive the info from GEN via a mailbox
//2. Send them to the Interface using virtual interface

class driver;
  
  virtual intf vif;	//vif is the handle of virtual interface
  
  mailbox gen2drv;	//handle of the mailbox
  
  function new(virtual intf vif,mailbox gen2drv);
    this.vif=vif;
    this.gen2drv=gen2drv;
  endfunction
  
  task main();
    forever
      begin
        transaction trans;	//handle of transaction class, to get the data from mailbox
        gen2drv.get(trans);	//receive the info from generator
        
        vif.a = trans.a;	//sample the input for the virtual interface
        vif.b = trans.b;
        vif.c = trans.c;
        
        trans.display("DRV");
        
      end
  endtask
  
endclass
