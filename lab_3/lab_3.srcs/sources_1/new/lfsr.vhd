----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 04/13/2024 09:08:30 AM
-- Design Name:
-- Module Name: lfsr - Behavioral
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

entity lfsr is
    Generic(init_seed : std_logic_vector(15 downto 0) := "0101110110010101");
    Port ( clk : in STD_LOGIC;
           rnd : out STD_LOGIC);
end lfsr;

architecture Behavioral of lfsr is
    signal seed : std_logic_vector(15 downto 0) := init_seed;

begin
    process(clk)
    begin
        if rising_edge(clk) then
            seed <= seed(14 downto 0) & (seed(15) xor seed(13) xor seed(12) xor seed(10));
        end if;
    end process;
    
    rnd <= seed(15);

end Behavioral;