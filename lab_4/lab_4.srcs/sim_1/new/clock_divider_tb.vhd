----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 04/14/2024 08:23:30 AM
-- Design Name:
-- Module Name: clock_divider_tb - Behavioral
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

entity clock_divider_tb is
--  Port ( );
end clock_divider_tb;

architecture Behavioral of clock_divider_tb is

    component clock_divider is
        Port ( clk_in : in STD_LOGIC;
               clk_out : out STD_LOGIC);
    end component;
    
    signal clk_in : std_logic := '0';
    signal clk_out : std_logic := '0';
    
    constant PERIOD : time := 10 ns;

begin

uut: clock_divider port map(clk_in => clk_in, clk_out => clk_out);

clk_in <= not clk_in after PERIOD / 2;

end Behavioral;