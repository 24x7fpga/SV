class cstrs_challenge2 #(N = 50);

   // class properties
   rand int num;
   int arr[$];

   // constraint logic  
   constraint c1 {num > 0; num < N;}
   constraint c2 {(num != 2) -> (num % 2 != 0);}
   constraint c3 {(num != 3) -> (num % 3 != 0);}
   
   // post randomize
   function void post_randomize();
     if((num == 2 || num == 3) && !(num inside {arr}))
       arr.push_back(num);
     else if(prime(num) && !(num inside {arr}))
       arr.push_back(num);
   endfunction

   // prime
   function int prime(int n);
     for(int j = 5; j*j <= n; j=j+6)begin
       if(n % j == 0 || n % (j+2) == 0)
         return 0;
     end
     return 1;
   endfunction
          
   // display function
   function void disp();
      foreach(arr[i])begin
        $display("prime no :: %d", arr[i]);
      end  
   endfunction // disp

endclass // cstrs_challenge2
