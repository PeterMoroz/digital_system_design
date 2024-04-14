----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/14/2024 04:47:47 PM
-- Design Name: 
-- Module Name: stopwatch - Behavioral
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

entity stopwatch is
    Port ( button : in STD_LOGIC;
           clock : in STD_LOGIC;
           an : out STD_LOGIC_VECTOR (3 downto 0);
           ca : out STD_LOGIC;
           cb : out STD_LOGIC;
           cc : out STD_LOGIC;
           cd : out STD_LOGIC;
           ce : out STD_LOGIC;
           cf : out STD_LOGIC;
           cg : out STD_LOGIC);
end stopwatch;

architecture Behavioral of stopwatch is
    component press_detect is
    port(button : in std_logic;
        clock : in std_logic;
        press : out std_logic);
    end component;
    
    component clock_divider is
    port(clk_in : in std_logic;
        clk_out : out std_logic);
    end component;
    
    component stopwatch_fsm is
    port(clock : in std_logic;
        control : in std_logic;
        count : out std_logic_vector(15 downto 0));
    end component;
    
    component disp4 is
    port(clk : in std_logic;
        disp_in : in std_logic_vector(15 downto 0);
        an : out std_logic_vector(3 downto 0);
        ca, cb, cc, cd, ce, cf, cg : out std_logic);
    end component;
    
    signal button_event : std_logic := '0';
    signal clock_internal : std_logic := '0';
    signal count : std_logic_vector(15 downto 0) := "0000000000000000";     

begin

press_detect_0: press_detect port map(button => button, clock => clock_internal, press => button_event);
clock_divider_0: clock_divider port map(clk_in => clock, clk_out => clock_internal);
stopwatch_fsm_0: stopwatch_fsm port map(clock => clock_internal, control => button_event, count => count);
disp4_0: disp4 port map(clk => clock, disp_in => count, an => an, ca => ca, cb => cb, cc => cc, cd => cd, ce => ce, cf => cf, cg => cg);

end Behavioral;
