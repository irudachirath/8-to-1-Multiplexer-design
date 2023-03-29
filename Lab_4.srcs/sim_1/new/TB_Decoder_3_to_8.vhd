----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2023 03:48:22 PM
-- Design Name: 
-- Module Name: TB_Decoder_3_to_8 - Behavioral
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

entity TB_Decoder_3_to_8 is
--  Port ( );
end TB_Decoder_3_to_8;

architecture Behavioral of TB_Decoder_3_to_8 is
COMPONENT Decoder_3_to_8 PORT( 
           I : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (7 downto 0)
           );
END COMPONENT;

signal i : STD_LOGIC_VECTOR (2 downto 0);
signal en : STD_LOGIC;
signal y : STD_LOGIC_VECTOR (7 downto 0);

begin
UUT: Decoder_3_to_8 PORT MAP(
    I => i,
    EN => en,
    Y => y
    );
process
begin
en <= '0';
WAIT FOR 100 ns;

i(0) <= '0';
i(1) <= '1';
i(2) <= '1';
en <= '1';
WAIT FOR 100 ns;

i(1) <= '0';
WAIT FOR 100 ns;

i(1) <= '1';
i(2) <= '0';
WAIT FOR 100 ns;

i(0) <= '1';
WAIT;

end process;
end Behavioral;
