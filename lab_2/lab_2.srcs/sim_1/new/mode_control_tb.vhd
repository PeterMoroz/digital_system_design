----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/08/2024 08:31:03 PM
-- Design Name:
-- Module Name: mode_control_tb - Behavioral
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

entity mode_control_tb is
--  Port ( );
end mode_control_tb;

architecture Behavioral of mode_control_tb is
    component mode_control
    port(clk : in std_logic;
        shift_in : out std_logic;
        reset : out std_logic;
        shift_out : out std_logic);
    end component;
    
    signal clk : std_logic := '0';
    signal shift_in : std_logic := '0';
    signal reset : std_logic := '0';
    signal shift_out : std_logic := '0';
    
    constant CLK_PERIOD : time := 10 ns;

begin

    uut: mode_control port map(clk, shift_in, reset, shift_out);
    
    process
    begin
        clk <= '0';
        wait for CLK_PERIOD;
        clk <= '1';
        wait for CLK_PERIOD;
    end process;
end Behavioral;