-- Package: Semaphores
--
-- ==> Complete the code at the indicated places

package body Semaphores is
   protected body CountingSemaphore is
      entry Wait when count > 0 is
      begin
        Count := Count - 1;
      end  Wait;  -- To be completed

      entry Signal when Count < MaxCount is  -- To be completed
      begin
        Count := Count + 1;
      end Signal;
   end CountingSemaphore;
end Semaphores;

