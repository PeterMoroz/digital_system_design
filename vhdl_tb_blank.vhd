--
-- VHDL template for creating test benches
--

-- Library declarations: Add/change as needed
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;

-- entity declaration for your testbench. Don't declare any ports here
ENTITY test_tb IS 
END test_tb;

ARCHITECTURE behavior OF test_tb IS
   -- Component Declaration: Unit Under Test (UUT)
    COMPONENT TEST  -- Replace 'test' with the name of the module to be tested.
 
    PORT( -- copy and paste the input and output ports of the UUT


     );
    END COMPONENT;

   --Signal definitions: Declare (and initialize) a signal for each port of the UUT. 

    -- Clock definitions
    signal clk: std_logic := '0';
    constant clk_period : time := 10 ns;

BEGIN

   -- Clock process (toggle clock after each half period)
   clk_process :process
   begin
        clk <= not(clk);
        wait for clk_period/2;
   end process;

  
-- Instantiate the Unit Under Test (UUT).
-- In the port map, connect with the coresponding signals you declared above. 
   
   uut: TEST PORT MAP (


    );       

   -- Stimulus process
  stim_proc: process
   begin         
        wait for clk_period;




        wait;
  end process;

END;
