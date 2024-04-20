----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 04/20/2024 09:26:11 AM
-- Design Name:
-- Module Name: uart_receiver_tb - Behavioral
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

entity uart_receiver_tb is
--  Port ( );
end uart_receiver_tb;

architecture Behavioral of uart_receiver_tb is
    component uart_receiver is
    port(clk : in std_logic;
        rx : in std_logic;
        data : out std_logic_vector(7 downto 0));
    end component;
    
    signal clk : std_logic := '0';
    signal rx : std_logic := 'U';
    signal data : std_logic_vector(7 downto 0) := "UUUUUUUU";
    
    constant PERIOD : time := 10 ns;

begin

uut: uart_receiver port map(clk, rx, data);

clk <= not CLK after PERIOD / 2;

process
begin
    rx <= '1' after PERIOD;
    wait for PERIOD * 2;
    rx <= '0';  -- start bit
    wait for PERIOD;
    -- data frame: 10000010
    rx <= '1';
    wait for PERIOD;
    rx <= '0';
    wait for PERIOD * 5;
    rx <= '1';
    wait for PERIOD;
    rx <= '0';
    wait for PERIOD;
    rx <= '1';  -- stop bit
    wait ;
end process;

end Behavioral;