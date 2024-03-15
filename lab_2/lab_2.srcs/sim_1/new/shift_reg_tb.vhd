----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 03/08/2024 08:09:53 AM
-- Design Name:
-- Module Name: shift_reg_tb - Behavioral
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

entity shift_reg_tb is
--  Port ( );
end shift_reg_tb;

architecture Behavioral of shift_reg_tb is
    component shift_reg
    port(ser_in : in std_logic;
        par_in : in std_logic_vector(3 downto 0);
        shift_in : in std_logic;
        shift_out : in std_logic;
        clk : in std_logic;
        ser_out : out std_logic;
        par_out : out std_logic_vector(3 downto 0));
    end component;
    
    signal ser_in : std_logic := '0';
    signal par_in : std_logic_vector(3 downto 0) := "0000";
    signal shift_in : std_logic := '0';
    signal shift_out : std_logic := '0';
    signal clk : std_logic := '0';
    signal ser_out : std_logic := '0';
    signal par_out : std_logic_vector(3 downto 0) := "0000";
    
    signal par_out2 : std_logic_vector(3 downto 0) := "0000";
    signal shift_out2 : std_logic := '0';
    
    constant CLK_PERIOD : time := 10 ns;
    constant SHIFT_CLK_COUNT : integer := 4;
     
begin

    uut: shift_reg port map(
        ser_in => ser_in,
        par_in => par_in,
        shift_in => shift_in,
        shift_out => shift_out,
        clk => clk,
        ser_out => ser_out,
        par_out => par_out
    );
    
    uut2: shift_reg port map(
        ser_in => ser_out,
        par_in => "0000",
        shift_in => '0',
        shift_out => shift_out2,
        clk => clk,
        ser_out => open,
        par_out => par_out2);
    
    process
    begin
        clk <= '0';
        wait for CLK_PERIOD / 2;
        clk <= '1';
        wait for CLK_PERIOD / 2;
    end process;
    
    process
    begin

        wait for CLK_PERIOD / 2;
        
        shift_out <= '1';
        shift_out2 <= '1';

        par_in <= "0000";
        shift_in <= '1';
        wait for CLK_PERIOD;
        shift_in <= '0';
        wait for SHIFT_CLK_COUNT * CLK_PERIOD;
        
        par_in <= "0001";
        shift_in <= '1';
        wait for CLK_PERIOD;
        shift_in <= '0';
        wait for SHIFT_CLK_COUNT * CLK_PERIOD;
                
        par_in <= "0010";
        shift_in <= '1';
        wait for CLK_PERIOD;
        shift_in <= '0';
        wait for SHIFT_CLK_COUNT * CLK_PERIOD;
        
        par_in <= "0011";
        shift_in <= '1';
        wait for CLK_PERIOD;
        shift_in <= '0';
        wait for SHIFT_CLK_COUNT * CLK_PERIOD;
        
        par_in <= "0100";
        shift_in <= '1';
        wait for CLK_PERIOD;
        shift_in <= '0';
        wait for SHIFT_CLK_COUNT * CLK_PERIOD;
                
        par_in <= "0101";
        shift_in <= '1';
        wait for CLK_PERIOD;
        shift_in <= '0';
        wait for SHIFT_CLK_COUNT * CLK_PERIOD;
        
        par_in <= "0110";
        shift_in <= '1';
        wait for CLK_PERIOD;
        shift_in <= '0';
        wait for SHIFT_CLK_COUNT * CLK_PERIOD;
                
        par_in <= "0111";
        shift_in <= '1';
        wait for CLK_PERIOD;
        shift_in <= '0';
        wait for SHIFT_CLK_COUNT * CLK_PERIOD;
                
        par_in <= "1000";
        shift_in <= '1';
        wait for CLK_PERIOD;
        shift_in <= '0';
        wait for SHIFT_CLK_COUNT * CLK_PERIOD;
        
        par_in <= "1001";
        shift_in <= '1';
        wait for CLK_PERIOD;
        shift_in <= '0';
        wait for SHIFT_CLK_COUNT * CLK_PERIOD;
                
        par_in <= "1010";
        shift_in <= '1';
        wait for CLK_PERIOD;
        shift_in <= '0';
        wait for SHIFT_CLK_COUNT * CLK_PERIOD;
                
        par_in <= "1011";
        shift_in <= '1';
        wait for CLK_PERIOD;
        shift_in <= '0';
        wait for SHIFT_CLK_COUNT * CLK_PERIOD;
        
        par_in <= "1100";
        shift_in <= '1';
        wait for CLK_PERIOD;
        shift_in <= '0';
        wait for SHIFT_CLK_COUNT * CLK_PERIOD;
        
        par_in <= "1101";
        shift_in <= '1';
        wait for CLK_PERIOD;
        shift_in <= '0';
        wait for SHIFT_CLK_COUNT * CLK_PERIOD;
                        
        par_in <= "1110";
        shift_in <= '1';
        wait for CLK_PERIOD;
        shift_in <= '0';
        wait for SHIFT_CLK_COUNT * CLK_PERIOD;
        
        par_in <= "1111";
        shift_in <= '1';
        wait for CLK_PERIOD;
        shift_in <= '0';
        wait for SHIFT_CLK_COUNT * CLK_PERIOD;

        wait;
    end process;


end Behavioral;