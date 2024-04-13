----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 04/13/2024 04:36:44 PM
-- Design Name:
-- Module Name: delay_buffer_tb - Behavioral
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

entity delay_buffer_tb is
--  Port ( );
end delay_buffer_tb;

architecture Behavioral of delay_buffer_tb is

    component delay_buffer port(
        clk : in STD_LOGIC;
        din : in STD_LOGIC_VECTOR (3 downto 0);
        offset : in STD_LOGIC_VECTOR (7 downto 0);
        dout : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    signal clk : std_logic := '0';
    signal din : std_logic_vector(3 downto 0) := "0000";
    signal dout : std_logic_vector(3 downto 0) := "0000";
    signal offset : std_logic_vector(7 downto 0) := "00000001";
       
    constant PERIOD : time := 20 ns;

begin

uut: delay_buffer port map(
    clk => clk,
    din => din,
    offset => offset,
    dout => dout);

clk <= not clk after PERIOD / 2;

process
begin
    for i in 0 to 15 loop
        din <= std_logic_vector(to_unsigned(i, din'length));
        wait for PERIOD;
    end loop;
end process;


end Behavioral;