----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/03/2024 04:34:12 PM
-- Design Name:
-- Module Name: adder_4b - Behavioral
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

entity adder_4b is
    Port ( a_in : in STD_LOGIC_VECTOR (3 downto 0);
           b_in : in STD_LOGIC_VECTOR (3 downto 0);
           s_out : out STD_LOGIC_VECTOR (3 downto 0);
           carry_in : in STD_LOGIC;
           carry_out : out STD_LOGIC);
end adder_4b;

architecture Behavioral of adder_4b is
    component full_adder
    port(a : in std_logic;
        b : in std_logic;
        cin : in std_logic;
        s : out std_logic;
        cout : out std_logic);
    end component;
    
    signal cr0 : std_logic := '0';
    signal cr1 : std_logic := '0';
    signal cr2 : std_logic := '0';

begin

fa0: full_adder port map(
    a => a_in(0),
    b => b_in(0),
    cin => carry_in,
    s => s_out(0),
    cout => cr0
);

fa1: full_adder port map(
    a => a_in(1),
    b => b_in(1),
    cin => cr0,
    s => s_out(1),
    cout => cr1
);

fa2: full_adder port map(
    a => a_in(2),
    b => b_in(2),
    cin => cr1,
    s => s_out(2),
    cout => cr2
);

fa3: full_adder port map(
    a => a_in(3),
    b => b_in(3),
    cin => cr2,
    s => s_out(3),
    cout => carry_out
);

end Behavioral;