----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/15/2017 04:10:54 PM
-- Design Name: 
-- Module Name: Imem - Behavioral
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

entity Imem is
    Port ( 
           clk : in  STD_LOGIC;
           rst : in  std_logic;
           en : in  STD_LOGIC;
           Addr : in STD_LOGIC_VECTOR (15 downto 0);
           IR : out STD_LOGIC_VECTOR (15 downto 0)
    );
end Imem;

architecture Behavioral of Imem is

signal Instra : STD_LOGIC_VECTOR (15 downto 0);

begin

    
 process(Addr)
 begin
  case (Addr) is
    when "0000000000000000" => Instra <= "0010010000000101";	--LADI R0, 5
    when "0000000000000001" => Instra <= "0010010010000110";	--LADI R1, 6
    when "0000000000000010" => Instra <= "0010010110000010";	--LADI R3, 2
    when "0000000000000011" => Instra <= "0110000000010000";	--AND  R0, R1
    when "0000000000000100" => Instra <= "0010100110000000";	--STO  (R3), R0
    when "0000000000000101" => Instra <= "0010000010000010";	--LAD  R1, 2
    when "0000000000000110" => Instra <= "1111110000000000";	--hlt
    when others => Instra <= "1111110000000000";
  end case;
 end process;
 
 process(clk, rst)
 begin
      if (rst = '0') then
         IR <= (others => '0');
      elsif (clk = '1' and clk'event) then
            if (en = '1') then                
                 IR  <= Instra; 
            end if;
      end if;
 end process;
      
end Behavioral;
