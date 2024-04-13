----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 04/13/2024 09:15:54 AM
-- Design Name:
-- Module Name: prng - Behavioral
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

entity prng is
    Generic(init_seed0 : std_logic_vector(15 downto 0);
            init_seed1 : std_logic_vector(15 downto 0);
            init_seed2 : std_logic_vector(15 downto 0);
            init_seed3 : std_logic_vector(15 downto 0));
    Port ( clk : in STD_LOGIC;
           rnd : out STD_LOGIC_VECTOR (3 downto 0));
end prng;

architecture Behavioral of prng is

    component lfsr is
    generic(init_seed : std_logic_vector(15 downto 0));
    port (clk : in std_logic;
        rnd : out std_logic);
    end component;

begin

lfsr0: lfsr
generic map(init_seed => init_seed0)
port map(
    clk => clk,
    rnd => rnd(0)
);

lfsr1: lfsr
generic map(init_seed => init_seed1)
port map(
    clk => clk,
    rnd => rnd(1)
);

lfsr2: lfsr
generic map(init_seed => init_seed2)
port map(
    clk => clk,
    rnd => rnd(2)
);

lfsr3: lfsr
generic map(init_seed => init_seed3)
port map(
    clk => clk,
    rnd => rnd(3)
);

end Behavioral;