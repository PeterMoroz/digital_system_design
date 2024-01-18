--
-- VHDL template for creating test benches
--

-- Library declarations: Add/change as needed
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

-- entity declaration for your testbench. Don't declare any ports here
ENTITY lab1_adder_4b_tb IS 
END lab1_adder_4b_tb;

ARCHITECTURE behavior OF lab1_adder_4b_tb IS
   -- Component Declaration: Unit Under Test (UUT)
    COMPONENT adder_4b
    PORT(
        a_in : in std_logic_vector(3 downto 0);
        b_in : in std_logic_vector(3 downto 0);
        carry_in : in std_logic;
        s_out : out std_logic_vector(3 downto 0);
        carry_out : out std_logic
    );
    END COMPONENT;

   --Signal definitions: Declare (and initialize) a signal for each port of the UUT.
   signal a : std_logic_vector(3 downto 0) := "0000";
   signal b : std_logic_vector(3 downto 0) := "0000";
   signal cin : std_logic := '0';
   signal s : std_logic_vector(3 downto 0);
   signal cout : std_logic;

BEGIN

  
-- Instantiate the Unit Under Test (UUT).
-- In the port map, connect with the coresponding signals you declared above. 
   
   uut: adder_4b PORT MAP (
    a_in => a,
    b_in => b,
    carry_in => cin,
    s_out => s,
    carry_out => cout
   );       

   -- Stimulus process
  stim_proc: process
   begin
    wait for 10 ns;
    for i in 0 to 15 loop
        b <= "0000";
        for j in 0 to 15 loop
            wait for 10 ns;
            assert (s = a + b) report "Mismatch:: " & 
                " a = " & integer'image(to_integer(unsigned(a))) &
                " b = " & integer'image(to_integer(unsigned(b))) &  
                " sum = " & integer'image(to_integer(unsigned(s))) &
                " actual sum = " & integer'image(to_integer(unsigned(a + b))) 
                severity error;
            b <= b + "0001";
        end loop;
        a <= a + "0001";
    end loop;

  end process;

END;
