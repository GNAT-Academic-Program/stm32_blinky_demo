with Ada.Real_Time; use Ada.Real_Time;
with STM32.Board; use STM32.Board;

procedure STM32_Blinky_Demo is
   Period : constant Time_Span := Milliseconds (1000);
   Next_Release : Time := Clock;
begin
   Initialize_LEDs;
   loop
      Next_Release := Next_Release + Period;
      Toggle_LEDs (All_LEDs);
      delay until Next_Release;
   end loop;
end STM32_Blinky_Demo;
