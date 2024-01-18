--
-- VHDL template for creating test benches
--

-- Library declarations: Add/change as needed
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;

-- entity declaration for your testbench. Don't declare any ports here
ENTITY lab1_adders_tb IS 
END lab1_adders_tb;

ARCHITECTURE behavior OF lab1_adders_tb IS
   -- Component Declaration: Unit Under Test (UUT)
    COMPONENT half_adder

    PORT( a : in std_logic;
        b : in std_logic;
        s : out std_logic;
        c : out std_logic
    );
    END COMPONENT;

    COMPONENT full_adder

    PORT( a : in std_logic;
        b : in std_logic;
        cin : in std_logic;
        s : out std_logic;
        cout : out std_logic
    );
    END COMPONENT;

   --Signal definitions: Declare (and initialize) a signal for each port of the UUT. 

    signal a: std_logic := 'U';
    signal b: std_logic := 'U';
    signal c: std_logic := 'U';

    signal s1: std_logic := 'U';
    signal c1: std_logic := 'U';
    signal s2: std_logic := 'U';
    signal c2: std_logic := 'U';

BEGIN

-- Instantiate the Unit Under Test (UUT).
    uut1: half_adder PORT MAP (
     a => a,
     b => b,
     s => s1,
     c => c1
    );

    uut2: full_adder PORT MAP (
     a => a,
     b => b,
     s => s2,
     cin => c,
     cout => c2
    );
    
   -- Stimulus process
  stim_proc: process
   begin         
        a <= '0';
        b <= '0';
        c <= '0';
        wait for 10 ns;
        a <= '1';
        wait for 10 ns;
        a <= '0';
        b <= '1';
        wait for 10 ns;
        a <= '0';
        b <= '0';
        c <= '1';
        wait for 10 ns;
        a <= '1';
        wait for 10 ns;
        a <= '0';
        b <= '1';
        wait for 10 ns;
        a <= '1';
        wait for 10 ns;
        c <= '0';
        wait;
  end process;

END;
