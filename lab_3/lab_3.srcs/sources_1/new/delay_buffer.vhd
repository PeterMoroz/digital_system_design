----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 04/13/2024 04:18:48 PM
-- Design Name:
-- Module Name: delay_buffer - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity delay_buffer is
    Port ( clk : in STD_LOGIC;
           din : in STD_LOGIC_VECTOR (3 downto 0);
           offset : in STD_LOGIC_VECTOR (7 downto 0);
           dout : out STD_LOGIC_VECTOR (3 downto 0));
end delay_buffer;

architecture Behavioral of delay_buffer is
    component blk_mem_gen_0
    port (
      clka : IN STD_LOGIC;
      wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      dina : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      clkb : IN STD_LOGIC;
      addrb : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      doutb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
    end component;
    
    component c_counter_binary_0
    port (
      CLK : IN STD_LOGIC;
      Q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
    end component;

    signal addr_a : std_logic_vector(7 downto 0) := "00000000";
    signal addr_b : std_logic_vector(7 downto 0) := "00000000";

begin

dpr: blk_mem_gen_0
port map (
  clka => clk,
  wea => "1",
  addra => addr_a,
  dina => din,
  clkb => clk,
  addrb => addr_b,
  doutb => dout);
    
counter: c_counter_binary_0
port map (
  CLK => clk,
  Q => addr_b);

addr_a <= std_logic_vector(unsigned(offset) + unsigned(addr_b));

end Behavioral;