----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/22/2023 04:21:48 PM
-- Design Name: 
-- Module Name: TB_Mux_8_to_1 - Behavioral
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

entity TB_Mux_8_to_1 is
--  Port ( );
end TB_Mux_8_to_1;

architecture Behavioral of TB_Mux_8_to_1 is
COMPONENT Mux_8_to_1 PORT( 
           S : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (7 downto 0);
           Y : out STD_LOGIC 
           );
END COMPONENT;

signal s : STD_LOGIC_VECTOR (2 downto 0);
signal en, y : STD_LOGIC;
signal d : STD_LOGIC_VECTOR (7 downto 0);

begin
UTT: Mux_8_to_1 PORT MAP(
    S => s,
    D => d,
    EN => en,
    Y => y
    );
    
process
    begin
     en <= '0';
     d(0) <= '0';
     d(1) <= '1';
     d(2) <= '1';
     d(3) <= '0';
     d(4) <= '0';
     d(5) <= '1';
     d(6) <= '0';
     d(7) <= '1';
     WAIT FOR 100 ns; -- after 100 ns change inputs
     en <= '1';
     s(0) <= '0';
     s(1) <= '0';
     s(2) <= '0';
     WAIT FOR 100 ns; --change again
     s(0) <= '1';
     WAIT FOR 100 ns; --change again
     s(1) <= '1';
     s(0) <= '0';
     WAIT FOR 100 ns; --change again
     s(0) <= '1';
     WAIT FOR 100 ns; -- after 100 ns change inputs
     s(0) <= '0';
     s(1) <= '0';
     s(2) <= '1';
     WAIT FOR 100 ns; --change again
     s(0) <= '1';
     WAIT FOR 100 ns; --change again
     s(1) <= '1';
     s(0) <= '0';
     WAIT FOR 100 ns; --change again
     s(0) <= '1';
     WAIT; -- will wait forever
    end process;

end Behavioral;
