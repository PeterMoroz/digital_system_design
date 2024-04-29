----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 04/21/2024 04:42:56 PM
-- Design Name:
-- Module Name: cpu_top_tb - Behavioral
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

entity cpu_top_tb is
--  Port ( );
end cpu_top_tb;

architecture Behavioral of cpu_top_tb is

    signal reset : std_logic := '0';
    signal clk : std_logic := '0';
    
    constant PERIOD : time := 10 ns;

   signal  wr_en: std_logic := '1';
   signal  dr   : std_logic_vector( 7 downto 0) := (others => '0'); -- Data from the memory
   signal  dw   : std_logic_vector( 7 downto 0) := (others => '0'); -- Data to the memory
   signal  addr : std_logic_vector( 7 downto 0) := (others => '0'); -- Memory address
   signal pc_out   : std_logic_vector( 7 downto 0); -- Program counter value
   signal accu_out : std_logic_vector( 7 downto 0);  -- Accumulator value
  
   component procram
     port(
       A     : in  std_logic_vector(7 downto 0);
       DI    : in  std_logic_vector(7 downto 0);
       RESET : in  std_logic;
       WR_EN : in  std_logic;
       CLK   : in  std_logic;
       DO    : out std_logic_vector(7 downto 0));
   end component;

   component cpu
     port( clk      : in  std_logic;
           reset    : in  std_logic;
           wr_en    : out  std_logic;
           dr       : in  std_logic_vector( 7 downto 0); -- Data from the memory
           dw       : out std_logic_vector( 7 downto 0); -- Data to the memory
           addr     : out std_logic_vector( 7 downto 0); -- Memory address
           pc_out   : out std_logic_vector( 7 downto 0); -- Program counter value
           accu_out : out std_logic_vector( 7 downto 0)  -- Accumulator value
           );
     end component;


begin


cpu_inst: cpu
port map(
  clk => clk,
  reset => reset,
  wr_en => wr_en,
  dr => dr,
  dw => dw,
  addr => addr,
  pc_out => pc_out,
  accu_out => accu_out
  );

mem_inst: procram
port map(
  A => addr,
  DI => dw,
  RESET => reset,
  WR_EN => wr_en,
  CLK => clk,
  DO => dr
 );

clk <= not clk after PERIOD / 2;
reset <= '0', '1' after PERIOD, '0' after 2 * PERIOD;

end Behavioral;