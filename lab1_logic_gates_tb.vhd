--
-- VHDL template for creating test benches
--

-- Library declarations: Add/change as needed
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;

-- entity declaration for your testbench. Don't declare any ports here
ENTITY lab1_logic_gates_tb IS 
END lab1_logic_gates_tb;

ARCHITECTURE behavior OF lab1_logic_gates_tb IS
   -- Component Declaration: Unit Under Test (UUT)
    COMPONENT and_gate
 
    PORT( a : in std_logic;
        b : in std_logic;
        q : out std_logic
     );
    END COMPONENT;
    
    COMPONENT or_gate
 
    PORT( a : in std_logic;
        b : in std_logic;
        q : out std_logic
     );
    END COMPONENT;
    
    COMPONENT xor_gate
 
    PORT( a : in std_logic;
        b : in std_logic;
        q : out std_logic
     );
    END COMPONENT;

   --Signal definitions: Declare (and initialize) a signal for each port of the UUT. 

    signal a: std_logic := 'U';
    signal b: std_logic := 'U';
    signal q_and: std_logic := 'U';
    signal q_or: std_logic := 'U';
    signal q_xor: std_logic := 'U';

BEGIN

-- Instantiate the Unit Under Test (UUT).
   
   uut1: and_gate PORT MAP (
    a => a,
    b => b,
    q => q_and
    );

   uut2: or_gate PORT MAP (
    a => a,
    b => b,
    q => q_or
    );

   uut3: xor_gate PORT MAP (
     a => a,
     b => b,
     q => q_xor
     );
    
   -- Stimulus process
  stim_proc: process
   begin         
        a <= '0';
        b <= '0';
        wait for 10 ns;
        a <= '1';
        wait for 10 ns;
        a <= '0';
        b <= '1';
        wait for 10 ns;
        a <= '1';
        wait;
  end process;

END;
