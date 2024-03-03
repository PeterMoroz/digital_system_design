----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/03/2024 03:25:47 PM
-- Design Name:
-- Module Name: lab1_tb - Behavioral
-- Project Name:
-- Target Devices:
-- Tool Versions:
-- Description:
--
-- Dependencies:
--
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lab1_tb is
--  Port ( );
end lab1_tb;

architecture Behavioral of lab1_tb is
    component my_and
    port(a : in std_logic;
        b : in std_logic;
        q : out std_logic);
    end component;
    
    component my_or
    port(a : in std_logic;
        b : in std_logic;
        q : out std_logic);
    end component;
    
    component my_xor
    port(a : in std_logic;
        b : in std_logic;
        q : out std_logic);
    end component;
    
    signal a : std_logic := '0';
    signal b : std_logic := '0';
    signal q_and : std_logic := '0';
    signal q_or : std_logic := '0';
    signal q_xor : std_logic := '0';

begin
    uut1: my_and port map(
        a => a,
        b => b,
        q => q_and);
        
    uut2: my_or port map(
        a => a,
        b => b,
        q => q_or);
            
    uut3: my_xor port map(
        a => a,
        b => b,
        q => q_xor);
   
   process
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


end Behavioral;