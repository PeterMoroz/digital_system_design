----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 04/13/2024 09:22:48 AM
-- Design Name:
-- Module Name: prng_tb - Behavioral
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

entity prng_tb is
--  Port ( );
end prng_tb;

architecture Behavioral of prng_tb is
    component prng is
    generic(init_seed0 : std_logic_vector(15 downto 0);
            init_seed1 : std_logic_vector(15 downto 0);
            init_seed2 : std_logic_vector(15 downto 0);
            init_seed3 : std_logic_vector(15 downto 0));
    port (
        clk : in std_logic;
        rnd : out std_logic_vector(3 downto 0));
    end component;
    
    signal clk : std_logic := '0';
    signal rnd : std_logic_vector(3 downto 0) := "0000";
    
    constant PERIOD : time := 20 ns;

begin

prng0: prng
generic map(init_seed0 => "0101110110010101",
            init_seed1 => "0101110110010101",
            init_seed2 => "0101110110010101",
            init_seed3 => "0101110110010101")
port map( clk => clk, rnd => rnd );

clk <= not clk after PERIOD / 2;

end Behavioral;