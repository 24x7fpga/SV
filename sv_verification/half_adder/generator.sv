//Generator class

//1. Randomize the inputs
//2. Put them in the mailbox

class generator;
  
  event ev;              // Create event to wait until the scr is verified the transaction 
  
  mailbox gen2drv;       //Create a mailbox: sending info from Generator to Driver
  
  transaction trans;     //Create an handle of the transaction class 

//Create a constructor of generator class
//"new" will create a memory for  variable for gen2drv and initialize
//them with their default values and return the address to generator handle
  function new(mailbox gen2drv);
    trans = new(); 					//object for transaction class
    this.gen2drv = gen2drv; 		//info from the outside class is passed to the 
  endfunction						//gen2drv present inside this class
  
  task main();
    repeat(10)
      begin
        assert(trans.randomize) 
          else 
        $error("GEN: Randomization Failed");  //randomize the transaction and verify if is randomized
        //trans.randomize();			      //randomize the transaction
        trans.DISP("GEN");	                  //Display the values
        gen2drv.put(trans);			          //put them in the mailbox

        @(ev);                                // wait for the event to be triggered in scoreboard class
      end
  endtask
  
endclass
