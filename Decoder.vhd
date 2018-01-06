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

entity Decoder is
    Port ( 
           Opcode : in STD_LOGIC_VECTOR (5 downto 0);
           CU_entry : out STD_LOGIC_VECTOR (15 downto 0)
    );
end Decoder;

architecture Behavioral of Decoder is

begin

    
 process(Opcode)
 begin
  case (Opcode) is
    when "000000" => CU_entry <= "000001" & "000000" & "0000";
    when "000001" => CU_entry <= "000001" & "000001" & "0000";
    when "000010" => CU_entry <= "000001" & "000010" & "0000";
    when "000011" => CU_entry <= "000001" & "000011" & "0000";
    when "000100" => CU_entry <= "000001" & "000100" & "0000";
    when "000101" => CU_entry <= "000001" & "000101" & "0000";
    when "000110" => CU_entry <= "000001" & "000110" & "0000";
    when "000111" => CU_entry <= "000001" & "000111" & "0000";
    when others => CU_entry <= "000001" & "000000" & "0000";
  end case;
 end process;
 
      
end Behavioral;
