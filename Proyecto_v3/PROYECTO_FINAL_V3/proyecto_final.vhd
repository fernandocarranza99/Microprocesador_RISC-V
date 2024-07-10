----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:09:29 06/24/2024 
-- Design Name: 
-- Module Name:    proyecto_final - Behavioral 
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

-- Entidad principal del proyecto final
entity proyecto_final is
    Port ( 
        Clock : in  STD_LOGIC;  -- Se�al de reloj
        Reset : in  STD_LOGIC;  -- Se�al de reinicio
        Enable: in STD_LOGIC;    -- Se�al de habilitaci�n
		  Salida: out STD_LOGIC_VECTOR(7 downto 0) -- Se�al para LEDs
    );
end proyecto_final;

architecture Behavioral of proyecto_final is

    -- Declaraci�n del componente registerunit (Unidad de registros)
    component registerunit is
        port (
            Read_register1: in std_logic_vector(4 downto 0);  -- Primer registro de lectura
            Read_register2: in std_logic_vector(4 downto 0);  -- Segundo registro de lectura
            Write_register: in std_logic_vector(4 downto 0);  -- Registro de escritura
            Write_data: in std_logic_vector(31 downto 0);     -- Datos de escritura
            RegWrite: in std_logic;                           -- Se�al de escritura en el registro
            Reg2Loc: in std_logic;                            -- Se�al de selecci�n de registro
            Read_data1: out std_logic_vector(31 downto 0);    -- Datos le�dos del primer registro
            Read_data2: out std_logic_vector(31 downto 0);    -- Datos le�dos del segundo registro
            clk: in std_logic;                                -- Se�al de reloj
            reset: in std_logic                               -- Se�al de reinicio
        );
    end component;
    
    -- Declaraci�n del componente proyecto_control (Unidad de control)
    component proyecto_control is
        port(
            Instruction : in STD_LOGIC_VECTOR (31 downto 0);  -- Entrada de instrucciones
            Branch : out std_logic;                           -- Se�al de salto condicional
            MemRead : out STD_LOGIC;                          -- Se�al para habilitar lectura de memoria
            MemtoReg : out STD_LOGIC;                         -- Se�al para seleccionar entre ALU o Memoria para escribir en el registro
            ALUcontrol : out STD_LOGIC_VECTOR (3 downto 0);   -- Se�al de control para operaciones de ALU
            MemWrite : out STD_LOGIC;                         -- Se�al para habilitar escritura en memoria
            ALUSrc : out STD_LOGIC;                           -- Se�al para seleccionar la fuente de datos para la ALU (inmediato o registro)
            RegWR : out STD_LOGIC                             -- Se�al para habilitar escritura en el banco de registros
        );
    end component;

    -- Declaraci�n del componente Logica_de_salto (L�gica de salto)
    component Logica_de_salto is
        port(
            pc : in  STD_LOGIC_VECTOR (9 downto 0);           -- Direcci�n del contador de programa
            branch : in  STD_LOGIC;                           -- Se�al de salto condicional
            zero : in  STD_LOGIC;                             -- Se�al de cero
            exten : in  STD_LOGIC_VECTOR (31 downto 0);       -- Extensi�n del inmediato
            salida : out  STD_LOGIC_VECTOR (9 downto 0)       -- Direcci�n de salida despu�s del salto
        );
    end component Logica_de_salto;

    -- Declaraci�n del componente MDatos (Memoria de datos)
    component MDatos is
        port (
            Reset : in  STD_LOGIC;                            -- Se�al de reset
            Clock : in  STD_LOGIC;                            -- Se�al de reloj
            WriteData : in std_logic_vector(31 downto 0);     -- Datos a escribir en la memoria
            Address : in std_logic_vector(31 downto 0);       -- Direcci�n de memoria desde la ALU
            MemWrite : in std_logic;                          -- Se�al de control para habilitar la escritura en la memoria
            MemRead : in std_logic;                           -- Se�al de control para habilitar la lectura desde la memoria
            MemtoReg : in std_logic;                          -- Se�al de control para seleccionar la salida del multiplexor
            Salida_mux : out std_logic_vector(31 downto 0)    -- Salida del multiplexor
        );
    end component;

    -- Declaraci�n del componente PC (Contador de programa)
    component PC is
        port (
            MemDir_ALU : in  std_logic_vector(9 downto 0);    -- Direcci�n de memoria desde la ALU
            Rst : in  STD_LOGIC;                              -- Se�al de reset
            Clk : in STD_LOGIC;                               -- Se�al de reloj
            MemDir_o : out std_logic_vector(9 downto 0)       -- Direcci�n de memoria de salida
        );
    end component;

    -- Declaraci�n del componente ProgMem (Memoria de programa)
    component ProgMem is
        port (
            MemDir : in  STD_LOGIC_VECTOR (9 downto 0);       -- Direcci�n de memoria
            Rst : in  STD_LOGIC;                              -- Se�al de reset
            Enable : in STD_LOGIC;                            -- Se�al de habilitaci�n
            Clk : in  STD_LOGIC;                              -- Se�al de reloj
            Data : out  STD_LOGIC_VECTOR (31 downto 0)        -- Datos de salida de la memoria de programa
        );
    end component;

    -- Declaraci�n del componente ALU (Unidad aritm�tica l�gica)
    component ALU_V1 is
        port (
            a : in  STD_LOGIC_VECTOR (31 downto 0);           -- Primer operando
            b : in  STD_LOGIC_VECTOR (31 downto 0);           -- Segundo operando
            y : out  STD_LOGIC_VECTOR (31 downto 0);           -- Resultado
            zero : out  STD_LOGIC;                             -- Se�al de cero
            op : in  STD_LOGIC_VECTOR (3 downto 0)           -- Operaci�n
        );
    end component;

    -- Declaraci�n del componente mux_in (Multiplexor de entrada)
    component mux_in is
        port (
            registro : in  STD_LOGIC_VECTOR (31 downto 0);    -- Datos del registro
            inmediato : in  STD_LOGIC_VECTOR (31 downto 0);   -- Datos inmediatos
            ALU_src : in STD_LOGIC;                           -- Se�al de selecci�n de fuente para la ALU
            b : out STD_LOGIC_VECTOR (31 downto 0)            -- Salida del multiplexor
        );
    end component;

    -- Declaraci�n del componente ImmediateExtender (Extensor de inmediato)
    component ImmediateExtender is
        port (
            instruccion : in  STD_LOGIC_VECTOR (31 downto 0); -- Instrucci�n de entrada
            inmediato : out  STD_LOGIC_VECTOR (31 downto 0)    -- Inmediato extendido
        );
    end component;

    -- Se�ales auxiliares de Control
	 signal aux_Branch : STD_LOGIC;
	 signal aux_MemRead : STD_LOGIC;
	 signal aux_MemtoReg : STD_LOGIC;
	 signal aux_ALUControl : STD_LOGIC_VECTOR (3 downto 0);
	 signal aux_MemWrite : STD_LOGIC;
	 signal aux_ALUSrc : STD_LOGIC;
	 signal aux_RegWrite : STD_LOGIC;
	 
	 -- Se�ales auxiliares restantes	 
	 signal aux_SalidaMUX_Salto : STD_LOGIC_VECTOR (9 downto 0);
	 signal aux_SalidaPC : STD_LOGIC_VECTOR (9 downto 0);
	 signal aux_Instruction : STD_LOGIC_VECTOR (31 downto 0);
	 signal aux_WriteData : STD_LOGIC_VECTOR (31 downto 0);
    signal aux_Read_Data1 : STD_LOGIC_VECTOR (31 downto 0);
    signal aux_Read_Data2 : STD_LOGIC_VECTOR (31 downto 0);
    signal aux_ALUResult : STD_LOGIC_VECTOR (31 downto 0);
    signal aux_Zero : STD_LOGIC;
    signal aux_SalidaMUX : STD_LOGIC_VECTOR (31 downto 0);
    signal aux_SalidaEXT : STD_LOGIC_VECTOR (31 downto 0);
    
begin

    -- Instanciacion del componente PC
    proy_PC : PC
        port map (
            MemDir_ALU => aux_SalidaMUX_Salto,                -- Conectar direcci�n de memoria desde la ALU
            Rst => Reset,                                     -- Conectar se�al de reinicio
            Clk => Clock,                                     -- Conectar se�al de reloj
            MemDir_o => aux_SalidaPC                          -- Conectar direcci�n de memoria de salida
        );

    -- Instanciacion del componente ProgMem
    proy_MemPrograma : ProgMem
        port map (
            MemDir => aux_SalidaPC,                           -- Conectar direcci�n de memoria
            Rst => Reset,                                     -- Conectar se�al de reinicio
            Enable => Enable,                                 -- Conectar se�al de habilitaci�n
            Clk => Clock,                                     -- Conectar se�al de reloj
            Data => aux_Instruction                           -- Conectar datos de salida de la memoria de programa
        );

    -- Instanciacion del componente ImmediateExtender
    proy_ExtInm : ImmediateExtender
        port map (
            instruccion => aux_Instruction,                   -- Conectar instrucci�n de entrada
            inmediato => aux_SalidaEXT                        -- Conectar inmediato extendido
        );

    -- Instanciacion del componente Control
    proy_Control : proyecto_control
        port map (
            Instruction => aux_Instruction,                   -- Conectar instrucci�n de entrada
            Branch => aux_Branch,                             -- Conectar se�al de salto condicional
            MemRead => aux_MemRead,                           -- Conectar se�al para habilitar lectura de memoria
            MemtoReg => aux_MemtoReg,                         -- Conectar se�al para seleccionar entre ALU o Memoria para escribir en el registro
            ALUcontrol => aux_ALUControl,                     -- Conectar se�al de control para operaciones de ALU
            MemWrite => aux_MemWrite,                         -- Conectar se�al para habilitar escritura en memoria
            ALUSrc => aux_ALUSrc,                             -- Conectar se�al para seleccionar la fuente de datos para la ALU (inmediato o registro)
            RegWR => aux_RegWrite                             -- Conectar se�al para habilitar escritura en el banco de registros
        );

    -- Instanciacion del componente Unidad de Registros
    proy_Registros : registerunit
        port map (
            Read_register1 => aux_Instruction(9 downto 5),    -- Conectar primer registro de lectura
            Read_register2 => aux_Instruction(20 downto 16),  -- Conectar segundo registro de lectura
            Write_register => aux_Instruction(4 downto 0),    -- Conectar registro de escritura
            Write_data => aux_SalidaMUX,                      -- Conectar datos de escritura
            RegWrite => aux_RegWrite,                         -- Conectar se�al de escritura en el registro
            Reg2Loc => aux_Instruction(28),                   -- Conectar se�al de selecci�n de registro
            Read_data1 => aux_Read_Data1,                     -- Conectar datos le�dos del primer registro
            Read_data2 => aux_Read_Data2,                     -- Conectar datos le�dos del segundo registro
            clk => Clock,                                     -- Conectar se�al de reloj
            reset => Reset                                    -- Conectar se�al de reinicio
        );

    -- Instanciacion del componente mux_in
    proy_Mux : mux_in
        port map (
            registro => aux_Read_Data2,                       -- Conectar datos del registro
            inmediato => aux_SalidaEXT,                       -- Conectar datos inmediatos
            ALU_src => aux_ALUSrc,                            -- Conectar se�al de selecci�n de fuente para la ALU
            b => aux_WriteData                                -- Conectar salida del multiplexor
        );

    -- Instanciacion del componente ALU
    proy_ALU : ALU_V1
        port map (
            a => aux_Read_Data1,                              -- Conectar primer operando
            b => aux_WriteData,                               -- Conectar segundo operando
            y => aux_ALUResult,                               -- Conectar resultado
            zero => aux_Zero,                                 -- Conectar se�al de cero
            op => aux_ALUControl                              -- Conectar operaci�n
        );

    -- Instanciacion del componente Logica_de_salto
    proy_LogSalto : Logica_de_salto
        port map (
            pc => aux_SalidaPC,                               -- Conectar direcci�n del contador de programa
            branch => aux_Branch,                             -- Conectar se�al de salto condicional
            zero => aux_Zero,                                 -- Conectar se�al de cero
            exten => aux_SalidaEXT,                           -- Conectar extensi�n del inmediato
            salida => aux_SalidaMUX_Salto                     -- Conectar direcci�n de salida despu�s del salto
        );

    -- Instanciacion del componente Memoria de Datos
    proy_MemDatos : MDatos
        port map (
            Reset => Reset,                                   -- Conectar se�al de reset
            Clock => Clock,                                   -- Conectar se�al de reloj
            WriteData => aux_Read_Data2,                      -- Conectar datos a escribir en la memoria
            Address => aux_ALUResult,                         -- Conectar direcci�n de memoria desde la ALU
            MemWrite => aux_MemWrite,                         -- Conectar se�al de control para habilitar la escritura en la memoria
            MemRead => aux_MemRead,                           -- Conectar se�al de control para habilitar la lectura desde la memoria
            MemtoReg => aux_MemtoReg,                         -- Conectar se�al de control para seleccionar la salida del multiplexor
            Salida_mux => aux_SalidaMUX                       -- Conectar salida del multiplexor
        );
		  
	 Salida <= aux_SalidaMUX(7 downto 0);
    
end Behavioral;



