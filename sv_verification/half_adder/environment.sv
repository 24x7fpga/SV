//Environment class

`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"

class environment;
  
  generator		gen;	//create the handle
  driver		drv;
  monitor		mon;
  scoreboard	scb;
  
  mailbox m1;			//mailbox : Generator to Driver
  mailbox m2;			//mailbox : Monitor to Scoreboard
  
  event ev;
  
  virtual intf vif;		
  
  function new (virtual intf vif);
    this.vif = vif;
    
    m1 = new();			//create the mailbox for connection
    m2 = new();
    
    gen = new(m1);
    drv = new(vif,m1);
    mon = new(vif,m2);
    scb = new(m2);
    
    gen.ev = ev;    		//connect event from generator class
    scb.ev = ev;    		//to scroboard class
  endfunction
  
  
  task test();			//performs the task in the classes
    fork
      gen.main();
      drv.main();
      mon.main();
      scb.main();
    join_any
    disable fork;		//kill outstanding forks
  endtask
  
  task run();			//main which calls test() task
    test();
    $finish;
  endtask
  
endclass

