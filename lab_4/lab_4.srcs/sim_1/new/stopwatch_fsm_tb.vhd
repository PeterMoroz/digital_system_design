----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 04/14/2024 04:00:48 PM
-- Design Name:
-- Module Name: stopwatch_fsm_tb - Behavioral
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

entity stopwatch_fsm_tb is
--  Port ( );
end stopwatch_fsm_tb;

architecture Behavioral of stopwatch_fsm_tb is

    component stopwatch_fsm is
        port(clock : in std_logic;
            control : in std_logic;
            count : out std_logic_vector(15 downto 0));
    end component;
    
    signal clock : std_logic := '0';
    signal control : std_logic := '0';
    signal count : std_logic_vector(15 downto 0) := "0000000000000000";
    
    constant PERIOD : time := 10 ns;

begin

uut: stopwatch_fsm port map(clock => clock, control => control, count => count);

clock <= not clock after PERIOD / 2;

process
begin
    -- transition RESET -> START
    control <= '1';
    wait for PERIOD;
    control <= '0';
    wait for PERIOD;
    
    wait for PERIOD * 10;
    
    -- transition START -> STOP
    control <= '1';
    wait for PERIOD;
    control <= '0';
    wait for PERIOD;
    
    wait for PERIOD * 10;
    
    -- transition STOP -> RESET
    control <= '1';
    wait for PERIOD;
    control <= '0';
    wait for PERIOD;
    
    wait ;
    
end process;

end Behavioral;