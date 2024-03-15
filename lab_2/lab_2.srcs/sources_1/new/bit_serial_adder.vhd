----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/08/2024 08:25:45 AM
-- Design Name:
-- Module Name: bit_serial_adder - Behavioral
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

entity bit_serial_adder is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           clk : in STD_LOGIC;
           sum : out STD_LOGIC_VECTOR (3 downto 0));
end bit_serial_adder;

architecture Behavioral of bit_serial_adder is
    component shift_reg
    port (par_in : in std_logic_vector(3 downto 0);
        ser_in : in std_logic;
        shift_in : in std_logic;
        shift_out : in std_logic;
        clk : in std_logic;
        par_out : out std_logic_vector(3 downto 0);
        ser_out : out std_logic);
    end component;
    
    component full_adder
    port(a : in std_logic;
        b : in std_logic;
        cr_in : in std_logic;
        sum : out std_logic;
        cr_out : out std_logic);
    end component;
    
--    component dff
--    port(d : in std_logic;
--        clk : in std_logic;
--        reset : in std_logic;
--        q : out std_logic);
--    end component;
        
    
    component mode_control
    port(clk : in std_logic;
        shift_in : out std_logic;
        reset : out std_logic;
        shift_out : out std_logic);
    end component;
    
    signal shift_in : std_logic := '0';
    signal shift_out : std_logic := '0';
    signal reset : std_logic := '0';
    signal cr_in : std_logic := '0';
    signal cr_out : std_logic := '0';
    signal a_serial : std_logic := '0';
    signal b_serial : std_logic := '0';
    signal s_serial : std_logic := '0';

begin

shift_reg_a: shift_reg port map(a, '0', shift_in, '0', clk, open, a_serial);
shift_reg_b: shift_reg port map(b, '0', shift_in, '0', clk, open, b_serial);
mode_ctrl: mode_control port map(clk, shift_in, reset, shift_out);
-- dff1: dff port map(cr_out, clk, reset, cr_in);
adder: full_adder port map(a_serial, b_serial, cr_in, s_serial, cr_out);
shift_reg_s: shift_reg port map("0000", s_serial, '0', shift_out, clk, sum, open);

process(clk, reset)
begin
    if reset = '1' then
        cr_in <= '0';
    elsif rising_edge(clk) then
        cr_in <= cr_out;
    end if;
end process;

end Behavioral;