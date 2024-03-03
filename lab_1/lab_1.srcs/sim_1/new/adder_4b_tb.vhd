----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/03/2024 04:41:05 PM
-- Design Name:
-- Module Name: adder_4b_tb - Behavioral
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

entity adder_4b_tb is
--  Port ( );
end adder_4b_tb;

architecture Behavioral of adder_4b_tb is
    component adder_4b
    port(a_in : in std_logic_vector(3 downto 0);
        b_in : in std_logic_vector(3 downto 0);
        s_out : out std_logic_vector(3 downto 0);
        carry_in : in std_logic;
        carry_out : out std_logic);
    end component;
    
    signal a : std_logic_vector(3 downto 0) := "0000";
    signal b : std_logic_vector(3 downto 0) := "0000";
    signal s : std_logic_vector(3 downto 0) := "0000";
    
    signal cin : std_logic := '0';
    signal cout : std_logic := '0';

begin
    uut: adder_4b port map(
        a_in => a,
        b_in => b,
        s_out => s,
        carry_in => cin,
        carry_out => cout
    );

    process
    begin
        a <= "0000";
        b <= "0101";
        wait for 10 ns;
        a <= "1100";
        b <= "0100";
        wait for 10 ns;
        a <= "1111";
        b <= "0000";
        wait for 10 ns;
        a <= "0010";
        b <= "1101";
        wait for 10 ns;
        cin <= '1';
        wait for 10 ns;
        a <= "0000";
        b <= "0000";
        cin <= '0';
        wait;
    end process;

end Behavioral;