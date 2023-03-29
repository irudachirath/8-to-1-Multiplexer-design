----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/22/2023 03:47:09 PM
-- Design Name: 
-- Module Name: Mux_8_to_1 - Behavioral
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

entity Mux_8_to_1 is
    Port ( S : in STD_LOGIC_VECTOR (2 downto 0);
           D : in STD_LOGIC_VECTOR (7 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC);
end Mux_8_to_1;

architecture Behavioral of Mux_8_to_1 is
component Decoder_3_to_8 port(
I: in STD_LOGIC_VECTOR;
EN: in STD_LOGIC;
Y: out STD_LOGIC_VECTOR );
end component;

signal D_OUT, AND_OUT : STD_LOGIC_VECTOR (7 downto 0);

begin
Decoder_3_to_8_1 : Decoder_3_to_8
port map(
    I => S,
    EN => EN,
    Y => D_OUT );

AND_OUT(0) <= D_OUT(0) AND D(0);
AND_OUT(1) <= D_OUT(1) AND D(1);
AND_OUT(2) <= D_OUT(2) AND D(2);
AND_OUT(3) <= D_OUT(3) AND D(3);
AND_OUT(4) <= D_OUT(4) AND D(4);
AND_OUT(5) <= D_OUT(5) AND D(5);
AND_OUT(6) <= D_OUT(6) AND D(6);
AND_OUT(7) <= D_OUT(7) AND D(7);

Y <= AND_OUT(0) OR AND_OUT(1) OR AND_OUT(2) OR AND_OUT(3) OR AND_OUT(4) OR AND_OUT(5) OR AND_OUT(6) OR AND_OUT(7); 

end Behavioral;
