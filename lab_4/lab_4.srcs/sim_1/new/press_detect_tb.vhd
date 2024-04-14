----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 04/14/2024 03:25:45 PM
-- Design Name:
-- Module Name: press_detect_tb - Behavioral
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

entity press_detect_tb is
--  Port ( );
end press_detect_tb;

architecture Behavioral of press_detect_tb is
    component press_detect is
    port( button : in std_logic;
        clock : in std_logic;
        press : out std_logic);
    end component;
    
    signal button : std_logic := '0';
    signal clock : std_logic := '0';
    signal press : std_logic := '0';
    
    -- constant PERIOD : time := 10 ms;
    constant PERIOD : time := 10 ns;

begin

uut: press_detect port map(button => button, clock => clock, press => press);

clock <= not clock after PERIOD / 2;

process
begin
    button <= '1';
    wait for PERIOD * 2;
    button <= '0';
    wait for PERIOD * 2;
end process;


end Behavioral;