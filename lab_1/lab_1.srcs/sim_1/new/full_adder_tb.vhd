----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/03/2024 04:07:04 PM
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
    component full_adder
    port (a : in std_logic;
        b : in std_logic;
        cin : in std_logic;
        s : out std_logic;
        cout : out std_logic);
    end component;
    
    signal a : std_logic := '0';
    signal b : std_logic := '0';
    signal cin : std_logic := '0';
    signal s : std_logic := '0';
    signal cout : std_logic := '0';
    
begin

uut: full_adder port map (
    a => a,
    b => b,
    cin => cin,
    s => s,
    cout => cout
);

process
begin
    a <= '0';
    b <= '0';
    cin <= '0';
    wait for 10 ns;
    cin <= '1';
    wait for 10 ns;
    b <= '1';
    cin <= '0';
    wait for 10 ns;
    cin <= '1';
    wait for 10 ns;

    a <= '1';
    b <= '0';
    cin <= '0';
    wait for 10 ns;
    cin <= '1';
    wait for 10 ns;
    b <= '1';
    cin <= '0';
    wait for 10 ns;
    cin <= '1';
    wait for 10 ns;
    
    a <= '0';
    b <= '0';
    cin <= '0';
    wait;
    
end process;


end Behavioral;