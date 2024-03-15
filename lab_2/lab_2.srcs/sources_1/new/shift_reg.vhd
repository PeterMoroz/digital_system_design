----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/08/2024 07:50:43 AM
-- Design Name:
-- Module Name: shift_reg - Behavioral
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

entity shift_reg is
    Port ( ser_in : in STD_LOGIC;
           par_in : in STD_LOGIC_VECTOR (3 downto 0);
           shift_in : in STD_LOGIC;
           shift_out : in STD_LOGIC;
           clk : in STD_LOGIC;
           ser_out : out STD_LOGIC;
           par_out : out STD_LOGIC_VECTOR (3 downto 0));
end shift_reg;

architecture Behavioral of shift_reg is

begin

    process(clk, shift_in)
        variable tmp : std_logic_vector(3 downto 0) := "0000";
    begin
        if rising_edge(clk) then
            if shift_in = '1' then
                tmp := par_in;
            elsif shift_in = '0' then
                tmp(2 downto 0) := tmp(3 downto 1);
                tmp(3) := ser_in;
            end if;
            
            ser_out <= tmp(0);
            
            if shift_out = '1' then
                par_out <= tmp;
            end if;
        end if;
    end process;

end Behavioral;