----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:49:30 05/18/2024 
-- Design Name: 
-- Module Name:    proyecto_control - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity proyecto_control is
    Port ( 
        Instruction : in STD_LOGIC_VECTOR (31 downto 0); -- Entrada de Instrucciones
		  -- Reg2Loc : out std_logic;                         -- Multiplexor Registros
        Branch : out std_logic;                          -- Salto Condicional
        MemRead : out STD_LOGIC;                         -- Lectura de Memoria
        MemtoReg : out STD_LOGIC;                        -- Control de Multiplexor a Registro
        ALUcontrol : out STD_LOGIC_VECTOR (3 downto 0);  -- Operacion a realizar por la ALU
        MemWrite : out STD_LOGIC;                        -- Escritura de Memoria
        ALUSrc : out STD_LOGIC;                          -- Control de Multiplexor a ALU
        RegWR : out STD_LOGIC                         -- Escritura de Registro
    );
end proyecto_control;

architecture Behavioral of proyecto_control is

	signal opcode : std_logic_vector(6 downto 0);  -- Opcode de instruccion, hasta 7 bits
	signal funct3 : std_logic_vector(2 downto 0);  -- funct3 de instruccion, hasta 3 bits 
	signal funct7 : std_logic_vector(6 downto 0);  -- funct7 de instruccion, hasta 7 bits

begin

	opcode <= Instruction(6 downto 0);    -- Se almacena opcode de la instruccion
	funct3 <= Instruction(14 downto 12);  -- Se almacena funct3 de la instruccion
	funct7 <= Instruction(31 downto 25);  -- Se almacena funct7 de la instruccion

	-- Control Multiplexor Registro (1:Escritura, 0:Lectura)
	-- Reg2Loc <= '1' when (opcode="0110011" or opcode="0000011" or opcode="0100011") else '0';

	-- Control de saltos
	Branch <= '1' when (opcode="1100111" or opcode="1101111" or opcode="1100011") else '0';
		
	-- Control de lectura de memoria
   MemRead <= '1' when (opcode="0000011") else '0';
	
	-- Control de selección de memoria a registro
   MemtoReg <= '1' when (opcode="0000011") else '0';
	
	-- Control de escritura de memoria
   MemWrite  <= '1' when (opcode="0100011") else '0'; 
	 
	-- Control de selección entre un inmediato y un registro
   ALUSrc <= '1' when (opcode="0000011" or opcode="0010011" or opcode="1101111" or opcode="0100011" or (opcode="1100111" and funct3="000")) else '0';
	 
	-- Control de escritura/lectura de registro
   RegWR <= '1' when (opcode="0110011" or opcode="0000011" or opcode="1101111" or opcode="0010011" or (opcode="1100111" and funct3="000")) else '0';

-----------------------------------------------------------------------------------
-- Tipo R  -> opcode -> 0110011 -> funct3: 000 -------> funct7: 0000000 -> ADD
--											                       funct7: 0100000 -> SUB
--										  	  funct3: 001 --------------------------> SLL
--											  funct3: 100 --------------------------> XOR
--											  funct3: 101 --------------------------> SRL
--											  funct3: 110 --------------------------> OR
--											  funct3: 111 --------------------------> AND

-- TIPO I  -> opcode -> 0000011 -> funct3: 010 --------------------------> LW
--            opcode -> 0010011 -> funct3: 000 -------> funct7: 0000000 -> ADDI
--                                 funct3: 000 -------> funct7: 0100000 -> SUBI
--	                                funct3: 001 --------------------------> SLLI										                      
--	                                funct3: 100 --------------------------> XORI	
--	                                funct3: 101 --------------------------> SRLI	
--	                                funct3: 110 --------------------------> ORI	
--	                                funct3: 111 --------------------------> ANDI	
--         -> opcode -> 1100111 -> funct3: 000 --------------------------> JALR

-- TIPO S  -> opcode -> 0100011 -> funct3: 000 --------------------------> SW

-- TIPO SB -> opcode -> 1100111 -> funct3: 001 --------------------------> BEQ
--                                 funct3: 010 --------------------------> BNEQ
--                                 funct3: 011 --------------------------> BLT
--                                 funct3: 100 --------------------------> BGE

-- TIPO UJ -> opcode -> 1101111 -----------------------------------------> JAL
-------------------------------------------------------------------------------
-- ALUOp 
-- 0000 ADD 
-- 0001 SUB 
-- 0010 SLL 
-- 0011 XOR  
-- 0100 SRL
-- 0101 OR 
-- 0110 AND 
--------------------------------------------------------------------------------

	ALUcontrol <= "0000" when ((opcode="0110011" and funct3="000" and funct7="0000000") -- ADD
									or (opcode="0000011" and funct3="010") 	                  -- LW
									or (opcode="0010011" and funct3="000" and funct7="0000000") -- ADDI
									or (opcode="0100011" and funct3="010")                      -- SW							 
									or (opcode="1100111" and funct3="000")                      -- JALR
									or (opcode="1101111")) else                                 -- JAL                 					 
					  "0001" when ((opcode="0110011" and funct3="000" and funct7="0100000") -- SUB
				               or (opcode="0010011" and funct3="000" and funct7="0100000") -- SUBI
							      or (opcode="1100111" and funct3="001")                      -- BEQ
							      or (opcode="1100111" and funct3="010")                      -- BNEQ
							      or (opcode="1100111" and funct3="011")                      -- BLT
							      or (opcode="1100111" and funct3="100")) else                -- BGE
				     "0010" when ((opcode="0110011" and funct3="001")                      -- SLL
							      or (opcode="0010011" and funct3="001")) else                -- SLLI
				     "0011" when ((opcode="0110011" and funct3="100")                      -- XOR
							      or (opcode="0010011" and funct3="100")) else                -- XORI
				     "0100" when ((opcode="0110011" and funct3="101")                      -- SRL
							      or (opcode="0010011" and funct3="101")) else                -- SRLI
				     "0101" when ((opcode="0110011" and funct3="110")                      -- OR
							      or (opcode="0010011" and funct3="110")) else                -- ORI		 
				     "0110" when ((opcode="0110011" and funct3="111")                      -- AND
							      or (opcode="0010011" and funct3="111")) else                -- ANDI
				     "1111"; -- SIRVE PARA VER SI EL TEST BENCH DA ERROR "1111" NO ES VALIDO
				
end Behavioral;