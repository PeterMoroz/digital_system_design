----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 04/14/2024 03:41:22 PM
-- Design Name:
-- Module Name: stopwatch_fsm - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity stopwatch_fsm is
    Port ( clock : in STD_LOGIC;
           control : in STD_LOGIC;
           count : out STD_LOGIC_VECTOR (15 downto 0));
end stopwatch_fsm;

architecture Behavioral of stopwatch_fsm is
    type state_t is (RESET, START, STOP);
    signal state : state_t := RESET;
    
    signal enabled : boolean := false;
    signal counter : integer range 0 to 65535 := 0;

begin

    process(clock)
    begin
        if rising_edge(clock) then
            if control = '1' then
                if state = RESET then
                    state <= START;
                elsif state = START then
                    state <= STOP;
                elsif state = STOP then
                    state <= RESET;
                end if;
            end if;
        end if;
    end process;
    
    process(clock, state)
    begin
        if rising_edge(clock) then
            if state = RESET then
                counter <= 0;
            elsif state = START then
                counter <= counter + 1;
            end if;
        end if;
    end process;
      
    count <= std_logic_vector(to_unsigned(counter, count'length));

end Behavioral;