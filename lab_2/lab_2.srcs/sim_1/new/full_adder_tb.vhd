----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/12/2024 10:11:13 AM
-- Design Name:
-- Module Name: full_adder_tb - Behavioral
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

entity full_adder_tb is
--  Port ( );
end full_adder_tb;

architecture Behavioral of full_adder_tb is
    component full_adder is
    port (a : in std_logic;
        b : in std_logic;
        cr_in : in std_logic;
        sum : out std_logic;
        cr_out : out std_logic);
    end component;
    
    signal a : std_logic := '0';
    signal b : std_logic := '0';
    signal cr_in : std_logic := '0';
    signal sum : std_logic := '0';
    signal cr_out : std_logic := '0';

begin
    uut: full_adder port map(a, b, cr_in, sum, cr_out);
    
    process
    begin
        a <= '0';
        b <= '0';
        cr_in <= '0';
        wait for 10 ns;
        assert sum = '0' report "error: sum = " & std_logic'image(sum) & " expected 0" severity warning;
        assert cr_out = '0' report "error: cr_out = " & std_logic'image(cr_out) & " expected 0" severity warning;
        
        a <= '0';
        b <= '0';
        cr_in <= '1';
        wait for 10 ns;
        assert sum = '1' report "error: sum = " & std_logic'image(sum) & " expected 1" severity warning;
        assert cr_out = '0' report "error: cr_out = " & std_logic'image(cr_out) & " expected 0" severity warning;
        
        a <= '0';
        b <= '1';
        cr_in <= '0';
        wait for 10 ns;
        assert sum = '1' report "error: sum = " & std_logic'image(sum) & " expected 1" severity warning;
        assert cr_out = '0' report "error: cr_out = " & std_logic'image(cr_out) & " expected 0" severity warning;
        
        a <= '0';
        b <= '1';
        cr_in <= '1';
        wait for 10 ns;
        assert sum = '0' report "error: sum = " & std_logic'image(sum) & " expected 0" severity warning;
        assert cr_out = '1' report "error: cr_out = " & std_logic'image(cr_out) & " expected 1" severity warning;
        
        
        a <= '1';
        b <= '0';
        cr_in <= '0';
        wait for 10 ns;
        assert sum = '1' report "error: sum = " & std_logic'image(sum) & " expected 1" severity warning;
        assert cr_out = '0' report "error: cr_out = " & std_logic'image(cr_out) & " expected 0" severity warning;
        
        a <= '1';
        b <= '0';
        cr_in <= '1';
        wait for 10 ns;
        assert sum = '0' report "error: sum = " & std_logic'image(sum) & " expected 0" severity warning;
        assert cr_out = '1' report "error: cr_out = " & std_logic'image(cr_out) & " expected 1" severity warning;
        
        a <= '1';
        b <= '1';
        cr_in <= '0';
        wait for 10 ns;
        assert sum = '0' report "error: sum = " & std_logic'image(sum) & " expected 0" severity warning;
        assert cr_out = '1' report "error: cr_out = " & std_logic'image(cr_out) & " expected 1" severity warning;
        
        a <= '1';
        b <= '1';
        cr_in <= '1';
        wait for 10 ns;
        assert sum = '1' report "error: sum = " & std_logic'image(sum) & " expected 1" severity warning;
        assert cr_out = '1' report "error: cr_out = " & std_logic'image(cr_out) & " expected 1" severity warning;
            
    end process;


end Behavioral;