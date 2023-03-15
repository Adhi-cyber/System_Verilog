// Code your design here
/* Semaphore

when two process can access the shared region at the same tim eit causes an error

For example we have shared memmory region Here the two process WRITE and READ 

can access at same location in order to resolve that we use semaphore concept

It jzt like a Door key concept Consider  a shred region have to access then the process

have the key when the process gets completed then the key should return back to the bucket

Here the semaphore act as bucket

Syntax :   semaphore handle;
	
    		new keyword for creating the key -> handle = new();
            
            get keyword for access key from semaphore by process -> handle.get();
            
            put keyword for return key to bucket -> handle.put();
            
            try_get() keyword is used to return 1 meets required key
            							 return 0 does not meet required key
                                         
*/

module semaphore;
  
  semaphore sema;
  
  initial begin
    
    sema = new(1);
    
    //Here the two display process access the task
    
    fork
      
      display();  //process 1
      display();  //process 2
      
    join
    
  end
  
  
  task automatic display();
    begin
      
      sema.get(1);
      
      $display("Current simulation =", $time);
      
      #20;
      
      sema.put(1);
      
    end
    
  endtask
    
    endmodule
