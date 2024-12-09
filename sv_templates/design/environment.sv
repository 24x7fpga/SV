`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"

class environment #(parameter N = 1);

   generator  #(N)  gen;
   driver     #(N)  drv;
   monitor    #(N)  mon;
   scoreboard #(N)  scb;

  mailbox #(transaction #(N))    m1;     // mailbox: Generator to Driver
  mailbox #(transaction #(N))    m2;     // mailbox: Monitor to Scoreboard

   event       ev;                       // event to generate subsequent data

   virtual     intf #(N) vif;            // virtual interface

  function new (virtual intf #(N) vif);
      this.vif = vif;

      m1       = new();                  // create mailbox 
      m2       = new();

      gen      = new(m1);
      drv      = new(vif,m1);
      mon      = new(vif,m2);
      scb      = new(m2);

      gen.ev   = ev;                     // connect event from generator class
      scb.ev   = ev;                     // to scoreboard class
   endfunction // new

   task test();
      fork
	 gen.main();
	 drv.main();
	 mon.main();
	 scb.main();
      join_any
      disable fork;                      // kill outstanding forks
   endtask // test

   task run();
      test();
      $finish;
   endtask // run

endclass // environment

   
   
   
