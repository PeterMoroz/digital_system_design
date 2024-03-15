----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/08/2024 07:51:54 AM
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
           cr_in : in STD_LOGIC;
           sum : out STD_LOGIC;
           cr_out : out STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is

begin
--    sum <= (not a and not b and cr_in) or (not a and b and not cr_in) or (a and not b and not cr_in) or (a and b and cr_in);
-- after the simplification:
    sum <= a xor b xor cr_in;
    
    cr_out <= (a and b) or (a and cr_in) or (b and cr_in);

end Behavioral;