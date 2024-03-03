----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/03/2024 03:57:40 PM
-- Design Name:
-- Module Name: full_adder - Behavioral
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

entity full_adder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           s : out STD_LOGIC;
           cout : out STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is
    component half_adder
    port (a : in std_logic;
        b : in std_logic;
        s : out std_logic;
        carry : out std_logic);
    end component;
    
    signal cr1 : std_logic := '0';
    signal cr2 : std_logic := '0';
    signal hs : std_logic := '0';

begin

hs1: half_adder port map(
    a => a,
    b => b,
    s => hs,
    carry => cr1);
    
hs2: half_adder port map(
    a => hs,
    b => cin,
    s => s,
    carry => cr2);

cout <= cr1 or cr2;

end Behavioral;