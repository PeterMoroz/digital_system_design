----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 04/14/2024 08:17:52 AM
-- Design Name:
-- Module Name: clock_divider - Behavioral
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

entity clock_divider is
    Port ( clk_in : in STD_LOGIC;
           clk_out : out STD_LOGIC);
end clock_divider;

architecture Behavioral of clock_divider is

    signal clock : std_logic := '0';

begin

    process(clk_in)
        variable clk_count : integer range 0 to 1000000 := 0;
        -- variable clk_count : integer range 0 to 10 := 0;
    begin
        if rising_edge(clk_in) then
            clk_count := clk_count + 1;
            if clk_count = 1000000 then
                clock <= not clock;
                clk_count := 0;
            end if;
        end if;
    end process;
    
    clk_out <= clock;

end Behavioral;