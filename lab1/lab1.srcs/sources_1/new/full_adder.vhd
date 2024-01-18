----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/18/2024 12:28:10 PM
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
           cin : in STD_LOGIC; 
           s : out STD_LOGIC;
           cout : out STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is
    component half_adder
    port (
        a : in std_logic;
        b : in std_logic;
        s : out std_logic;
        c : out std_logic);
    end component;
        
    component or_gate
    port (
        a : in std_logic;
        b : in std_logic;
        q : out std_logic);
    end component;
        
    signal s1 : std_logic;
    signal c1 : std_logic;
    signal c2 : std_logic;

begin

    hs1: half_adder port map(
        a => a,
        b => b,
        s => s1,
        c => c1 
    );
    
    hs2: half_adder port map(
        a => s1,
        b => cin,
        s => s,
        c => c2 
    );
    
    or1: or_gate port map(
        a => c2,
        b => c1,
        q => cout
    );

end Behavioral;
