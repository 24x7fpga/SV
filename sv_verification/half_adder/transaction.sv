//Transcation or Packet class

class transaction;

//Stimulus for input
//Declare input with rand keyword
  rand bit a;	
  rand bit b; 
  
  bit s;
  bit c;
  
//Function to Display values  
  function void DISP(string name);		
    $display(" %s: a = %0d and b = %0d => s = %0d and c = %0d",name,a,b,s,c);
  endfunction
  
endclass
