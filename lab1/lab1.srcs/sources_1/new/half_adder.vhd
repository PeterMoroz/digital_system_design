----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/18/2024 12:19:53 PM
-- Design Name: 
-- Module Name: half_adder - Behavioral
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

entity half_adder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           s : out STD_LOGIC;
           c : out STD_LOGIC);
end half_adder;

architecture Behavioral of half_adder is
    component and_gate
    port (a : in std_logic;
        b : in std_logic;
        q : out std_logic);
    end component;
        
    component xor_gate
    port (a : in std_logic;
        b : in std_logic;
        q : out std_logic);
    end component;

begin

    and1: and_gate port map (
        a => a,
        b => b,
        q => c
    );
    
    xor1: xor_gate port map (
        a => a,
        b => b,
        q => s
    );

end Behavioral;
