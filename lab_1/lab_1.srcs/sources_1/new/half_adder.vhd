----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/03/2024 03:50:03 PM
-- Design Name:
-- Module Name: half_adder - Behavioral
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

entity half_adder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : out STD_LOGIC;
           carry : out STD_LOGIC);
end half_adder;

architecture Behavioral of half_adder is
    component my_and
    port(a : in std_logic;
        b : in std_logic;
        q : out std_logic);
    end component;
        
    component my_xor
    port(a : in std_logic;
        b : in std_logic;
        q : out std_logic);
    end component;
    
    signal sum : std_logic := '0';
    signal cr : std_logic := '0';

begin

and1: my_and port map(
    a => a,
    b => b,
    q => cr
);

xor1: my_xor port map(
    a => a,
    b => b,
    q => sum
);

s <= sum;
carry <= cr;

end Behavioral;