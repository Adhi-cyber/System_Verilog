// Code your design here
/* Foreach constraint or iterative constratint 

here the foreach loop has been used in the constraint block

whcih is used to constraint the dynamic array 

In this example we first declare the array and constraint the size

then we constrain the values and put the value into the array

*/

class iter_cons;
  
  rand byte addr[];
  rand byte data[];
  
  constraint addr_size {addr.size < 5;};
  constraint data_size {data.size == addr.size;};
  
  constraint addr_values {foreach(addr[i]) addr[i] inside{10,20,30,40};};
  constraint data_values {foreach(data[i]) data[i] > 4;};
  
  
endclass

module des;
  
  iter_cons handle1;
  
  initial
    begin
      
      repeat (4)
        begin
      
          handle1 = new();

          handle1.randomize();

          $display("Data_size is = %0d and addr_size is = %0d ", handle1.data.size(), handle1.addr.size());
          
          foreach(handle1.addr[i])
            $display("Data value = %0d and addr value = %0d", handle1.data[i], handle1.addr[i]);
          
          $display("--------------------------------------");
        end
      
    end
endmodule
