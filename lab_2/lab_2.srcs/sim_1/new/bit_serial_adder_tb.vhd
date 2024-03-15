----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/10/2024 10:24:59 AM
-- Design Name:
-- Module Name: bit_serial_adder_tb - Behavioral
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

entity bit_serial_adder_tb is
--  Port ( );
end bit_serial_adder_tb;

architecture Behavioral of bit_serial_adder_tb is
    component bit_serial_adder
    port(a : in std_logic_vector(3 downto 0);
        b : in std_logic_vector(3 downto 0);
        clk : in std_logic;
        sum : out std_logic_vector(3 downto 0));
    end component;
    
    signal a : std_logic_vector(3 downto 0) := "0000";
    signal b : std_logic_vector(3 downto 0) := "0000";
    signal clk : std_logic := '0';
    signal sum : std_logic_vector(3 downto 0) := "0000";
        
    constant CLK_PERIOD : time := 10 ns;
    constant SUM_DELAY : time := CLK_PERIOD * 5;

begin

     uut: bit_serial_adder port map(a, b, clk, sum);

    process
    begin
        clk <= '0';
        wait for CLK_PERIOD / 2;
        clk <= '1';
        wait for CLK_PERIOD / 2;
    end process;
    
    process
    begin
        wait for CLK_PERIOD / 2;
        for i in 0 to 15 loop
            a <= std_logic_vector(to_unsigned(i, a'length));
            for j in 0 to 15 loop
                b <= std_logic_vector(to_unsigned(j, b'length));
                wait for SUM_DELAY;
            end loop;
        end loop;
        
        wait;
        
    end process;
    
    
    process
        variable i : integer := 0;
        variable j : integer := 0;
        variable s : integer := 0;
    begin
        
        i := to_integer(unsigned(a));
        j := to_integer(unsigned(b));
        
        wait for SUM_DELAY;
        s := to_integer(unsigned(sum));
    
        assert s = ((i + j) mod 16) report "error "
            & " i = " & integer'image(i) & " j = " & integer'image(j)
            & " expected = " & integer'image((i + j) mod 16)
            & " actual = " & integer'image(s);
    end process;

end Behavioral;