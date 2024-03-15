----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/08/2024 08:07:40 AM
-- Design Name:
-- Module Name: mode_control - Behavioral
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

entity mode_control is
    Port ( clk : in STD_LOGIC;
           shift_in : out STD_LOGIC;
           reset : out STD_LOGIC;
           shift_out : out STD_LOGIC);
end mode_control;

architecture Behavioral of mode_control is
    signal count : integer range 0 to 4 := 0;

begin

    process(clk)
    begin
        if rising_edge(clk) then
            case count is
                when 0 =>
                    shift_in <= '1';
                    reset <= '1';
                    shift_out <= '0';
                when 1 | 2 | 3 =>
                    shift_in <= '0';
                    reset <= '0';
                    shift_out <= '0';
                when 4 =>
                    shift_in <= '0';
                    reset <= '0';
                    shift_out <= '1';
                when others =>
                    shift_in <= '0';
                    reset <= '0';
                    shift_out <= '0';
            end case;
            
            if count < 4 then
                count <= count + 1;
            else
                count <= 0;
            end if;
        end if;
    end process;

end Behavioral;