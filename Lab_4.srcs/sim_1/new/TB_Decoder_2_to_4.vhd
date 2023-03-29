----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2023 02:14:36 PM
-- Design Name: 
-- Module Name: TB_Decoder_2_to_4 - Behavioral
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

entity TB_Decoder_2_to_4 is
--  Port ( );
end TB_Decoder_2_to_4;

architecture Behavioral of TB_Decoder_2_to_4 is
COMPONENT Decoder_2_to_4 PORT( 
           I : in STD_LOGIC_VECTOR (1 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (3 downto 0)
           );
END COMPONENT;

signal i : STD_LOGIC_VECTOR (1 downto 0);
signal en : STD_LOGIC;
signal y : STD_LOGIC_VECTOR (3 downto 0);

begin
UTT: Decoder_2_to_4 PORT MAP(
    I => i,
    EN => en,
    Y => y
    );

process
begin
 en <= '0';
 WAIT FOR 100 ns; -- after 100 ns change inputs
 en <= '1';
 i(0) <= '0';
 i(1) <= '0';
 WAIT FOR 100 ns; --change again
 i(0) <= '1';


 WAIT FOR 100 ns; --change again
 i(1) <= '1';
 i(0) <= '0';

 WAIT FOR 100 ns; --change again
 i(0) <= '1';

 WAIT; -- will wait forever
end process;

end Behavioral;
