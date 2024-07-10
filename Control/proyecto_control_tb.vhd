--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:56:14 05/20/2024
-- Design Name:   
-- Module Name:   C:/Users/Educacion/Desktop/Arquitectura/Proyecto/proyecto_TB.vhd
-- Project Name:  Proyecto
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: proyecto_control
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY proyecto_TB IS
END proyecto_TB;
 
ARCHITECTURE behavior OF proyecto_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT proyecto_control
    PORT(
         Instruction : IN  std_logic_vector(31 downto 0);
         Branch : OUT  std_logic;
         MemRead : OUT  std_logic;
         MemtoReg : OUT  std_logic;
         ALUcontrol : OUT  std_logic_vector(3 downto 0);
         MemWrite : OUT  std_logic;
         ALUSrc : OUT  std_logic;
         RegWrite : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Instruction : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Branch : std_logic;
   signal MemRead : std_logic;
   signal MemtoReg : std_logic;
   signal ALUcontrol : std_logic_vector(3 downto 0);
   signal MemWrite : std_logic;
   signal ALUSrc : std_logic;
   signal RegWrite : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: proyecto_control PORT MAP (
          Instruction => Instruction,
          Branch => Branch,
          MemRead => MemRead,
          MemtoReg => MemtoReg,
          ALUcontrol => ALUcontrol,
          MemWrite => MemWrite,
          ALUSrc => ALUSrc,
          RegWrite => RegWrite
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
    wait for 10 ns;
			Instruction <= "01100111111100011111111110000000";
			
			 wait for 10 ns;
			 
			Instruction <= "00000001111100011000111110110011";  -- ADD
			
			 wait for 10 ns;

			Instruction <= "01000001111100011000111110110011";  -- SUB	
			 
			wait for 10 ns; 
			
			Instruction <= "00000001111100011100111110110011";  -- XOR	
			 
			wait for 10 ns; 

			Instruction <= "00000001111100011110111110110011";  -- OR	
			 
			wait for 10 ns;
			
			Instruction <= "00000001111100011111111110110011";  -- AND	
			 
			wait for 40 ns;
			
			Instruction <= "00000001111100011010111110000011";  -- LW	
			 
			wait for 10 ns;
			
			Instruction <= "00000001111100011000111110010011";  -- ADDI	
			 
			wait for 10 ns;
			
			Instruction <= "01000001111100011000111110010011";  -- SUBI	
			 
			wait for 10 ns;
			
			Instruction <= "00000001111100011001111110010011";  -- SLLI	
			 
			wait for 10 ns;
			
			Instruction <= "00000001111100011100111110010011";  -- XORI	
			 
			wait for 10 ns;
			
			Instruction <= "00000001111100011101111110010011";  -- SRLI	
			 
			wait for 10 ns;
			
			Instruction <= "00000001111100011000111111100111";  -- JALR	
			 
			wait for 10 ns;
			
			Instruction <= "00000001111100011000111111100111";  -- JALR	
			 
			wait for 10 ns;
			
			Instruction <= "00000001111100011010111110100011";  -- SW	
			 
			wait for 10 ns;
			
			Instruction <= "00000001111100011001111111100111";  -- BEQ
			 
			wait for 10 ns;
			
			Instruction <= "00000001111100011010111111100111";  -- BNEQ
			 
			wait for 40 ns;
			
			Instruction <= "00000001111100011010111111101111";  -- JAL
			 
			wait for 10 ns;
	
      -- insert stimulus here 

      wait;
   end process;

END;