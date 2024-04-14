----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 04/14/2024 02:54:20 PM
-- Design Name:
-- Module Name: press_detect - Behavioral
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

entity press_detect is
    Port ( button : in STD_LOGIC;
           clock : in STD_LOGIC;
           press : out STD_LOGIC);
end press_detect;

architecture Behavioral of press_detect is

    type state_t is (WAIT_FOR_PRESS, WAIT_FOR_RELEASE);
    signal state : state_t := WAIT_FOR_PRESS;

begin

    process(clock)
    begin
        if rising_edge(clock) then
            if state = WAIT_FOR_PRESS then
                if button = '1' then
                    press <= '1';
                    state <= WAIT_FOR_RELEASE;
                else
                    press <= '0';
                end if;
            elsif state = WAIT_FOR_RELEASE then
                press <= '0';
                if button = '0' then
                    state <= WAIT_FOR_PRESS;
                end if;
            end if;
        end if;
    end process;

end Behavioral;