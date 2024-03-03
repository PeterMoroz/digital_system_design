----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/03/2024 03:22:57 PM
-- Design Name:
-- Module Name: my_and - Behavioral
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

entity my_and is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           q : out STD_LOGIC);
end my_and;

architecture Behavioral of my_and is

begin
    q <= a and b;

end Behavioral;