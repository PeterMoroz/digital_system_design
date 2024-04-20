----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 04/20/2024 09:07:35 AM
-- Design Name:
-- Module Name: uart_receiver - Behavioral
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

entity uart_receiver is
    Port ( clk : in STD_LOGIC;
           rx : in STD_LOGIC;
           data : out STD_LOGIC_VECTOR (7 downto 0));
end uart_receiver;

architecture Behavioral of uart_receiver is
    type RX_STATE is (IDLE, SHIFT, STOP);
    signal  state : RX_STATE := IDLE;
    
begin

    process(clk)
        variable bitcount : integer range 0 to 8 := 0;
        variable frame : std_logic_vector(7 downto 0) := "UUUUUUUU";
    begin
        if rising_edge(clk) then
            case state is
                when IDLE =>
                    if rx = '0' then
                        bitcount := 0;
                        state <= SHIFT;
                    end if;
                when SHIFT =>
                    bitcount := bitcount + 1;
                    
                    frame(6 downto 0) := frame(7 downto 1);
                    frame(7) := rx;
                    
                    if bitcount = 8 then
                        state <= STOP;
                    end if;
                when STOP =>
                    if rx = '1' then
                        state <= IDLE;
                        data <= frame;
                    end if;
            end case;
        end if;
    end process;

end Behavioral;