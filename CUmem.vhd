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

entity CUmem is
    Port ( 
           MPC_out : in STD_LOGIC_VECTOR (15 downto 0);
           Micro_ins : out STD_LOGIC_VECTOR (31 downto 0);  --Microinstrction
           Next_addr : out STD_LOGIC_VECTOR (15 downto 0)
    );
end CUmem;

architecture Behavioral of CUmem is

 signal CU_data : STD_LOGIC_VECTOR (47 downto 0);
 
begin

 Micro_ins <= "00000000" & CU_data(39 downto 16);      --expand to 32-bit for flexibility
 Next_addr <= CU_data(15 downto 0);
        
    
 process(MPC_out)
 begin
  --case (MPC_out) is                 --  PC_en PC_sel Imem_en MPC_en MPC_sel cs/we/oe AR_en ALU/B/Dmem_out_en IR_data_en Jmp Rd_used RsA/B_used   S     M     Next_addr
  --  --Instruction fetching
  --  when "0000010000000000" => CU_data <= '0' & "00"  &  '0'  & '0' &  "00" & "000"  & '0' &  "000"            &  '0'  & '0' & '0'   & "00"  & "0000" &'0' & "0000010000000001";  
        
  --  when "0000010000010000" => CU_data <= '0' & "00"  &  '0'  & '0' &  "00" & "000"  & '0' &  "000"            &  '0'  & '0' & '0'   & "00"  & "0000" &'0' & "0000010000000001";
    
  --  when "0000010000100000" => CU_data <= '0' & "00"  &  '0'  & '0' &  "00" & "000"  & '0' &  "000"            &  '0'  & '0' & '0'   & "00"  & "0000" &'0' & "0000010000000001";
    
  --  when "0000010000110000" => CU_data <= '0' & "00"  &  '0'  & '0' &  "00" & "000"  & '0' &  "000"            &  '0'  & '0' & '0'   & "00"  & "0000" &'0' & "0000010000000001";
    
  --  when "0000010001000000" => CU_data <= '0' & "00"  &  '0'  & '0' &  "00" & "000"  & '0' &  "000"            &  '0'  & '0' & '0'   & "00"  & "0000" &'0' & "0000010000000001";
    
  --  when "0000010001010000" => CU_data <= '0' & "00"  &  '0'  & '0' &  "00" & "000"  & '0' &  "000"            &  '0'  & '0' & '0'   & "00"  & "0000" &'0' & "0000010000000001";
    
  --  when "0000010001100000" => CU_data <= '0' & "00"  &  '0'  & '0' &  "00" & "000"  & '0' &  "000"            &  '0'  & '0' & '0'   & "00"  & "0000" &'0' & "0000010000000001";
    
  --  when "0000010001110000" => CU_data <= '0' & "00"  &  '0'  & '0' &  "00" & "000"  & '0' &  "000"            &  '0'  & '0' & '0'   & "00"  & "0000" &'0' & "0000010000000001";
    
  --  when others => CU_data <= '0' & "00"  &  '0'  & '0' &  "00" & "000"  & '0' &  "000"            &  '0'  & '0' & '0'   & "00"  & "0000" &'0' & "0000010000000001";
  --end case;
 end process;
 
      
end Behavioral;
