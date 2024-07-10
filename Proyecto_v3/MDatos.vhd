----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:50:31 06/22/2024 
-- Design Name: 
-- Module Name:    MDatos - Behavioral 
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
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;

-- Declaraci�n de la entidad MDatos con par�metros gen�ricos para ancho de direcci�n, tama�o de memoria y ancho de datos.
entity MDatos is
    Port (
        Reset : in  STD_LOGIC; -- Se�al de reset.
        Clock : in  STD_LOGIC; -- Se�al de reloj.
        WriteData : in std_logic_vector(31 downto 0);  -- Datos a escribir en la memoria, desde Read Data 2 (registros).
        Address : in std_logic_vector(31 downto 0); -- Direcci�n de memoria, desde la ALU.
        MemWrite : in std_logic;  -- Se�al de control para habilitar la escritura en la memoria de datos.
        MemRead : in std_logic;  -- Se�al de control para habilitar la lectura desde la memoria de datos.
        MemtoReg : in std_logic;  -- Se�al de control para seleccionar la salida del multiplexor (1 para datos de memoria, 0 para datos de ALU).
        Salida_mux : out std_logic_vector(31 downto 0) -- Salida del multiplexor.
    );
end MDatos;

architecture Behavioral of MDatos is

    -- Definici�n de un tipo de arreglo para la memoria, con 1024 ubicaciones de 32 bits cada una.
    type memory_array is array(0 to 1023) of std_logic_vector(31 downto 0);
    signal memory : memory_array; -- Se�al para la memoria de datos.
    signal mem_addr : std_logic_vector(9 downto 0);  -- Se�al para la direcci�n en la memoria.
    signal mem_write_data : std_logic_vector(31 downto 0);  -- Se�al para los datos de escritura en la memoria.
    signal alu_data : std_logic_vector(31 downto 0); -- Se�al para el dato de la ALU.
    signal read_data : std_logic_vector(31 downto 0); -- Se�al para los datos le�dos desde la memoria.

begin

    -- Asignaci�n expl�cita de las se�ales internas.
    mem_addr <= Address(9 downto 0);  -- Asignaci�n de la direcci�n de memoria a partir de la entrada de la ALU.
    mem_write_data <= WriteData;  -- Asignaci�n de los datos de escritura.
    alu_data <= Address; -- Asignaci�n del dato de la ALU.

    -- Proceso para manejar las operaciones de escritura y lectura en la memoria de datos.
    process (Clock, Reset) is
    begin
        if Reset = '1' then
            read_data <= (others => '0'); -- Si el reset est� activado, limpiar los datos le�dos.
        elsif rising_edge(Clock) then
            if (MemWrite = '1' and MemRead = '0') then  -- Si est� habilitada la escritura y no la lectura,
                memory(to_integer(unsigned(mem_addr))) <= mem_write_data;  -- escribir los datos en la direcci�n especificada.
            elsif (MemRead = '1' and MemWrite = '0') then  -- Si est� habilitada la lectura y no la escritura,
                read_data <= memory(to_integer(unsigned(mem_addr)));  -- leer los datos desde la direcci�n especificada.
            end if;
        end if;
    end process;

    -- Proceso para controlar la salida del multiplexor en funci�n de MemtoReg.
    process (MemtoReg, read_data, alu_data) is
    begin
        if MemtoReg = '1' then
            Salida_mux <= read_data; -- Si MemtoReg es 1, seleccionar los datos le�dos de la memoria.
        else
            Salida_mux <= alu_data; -- Si MemtoReg es 0, seleccionar los datos de la ALU.
        end if;
    end process;	

    -- Proceso de lectura/escritura:
			-- Resetea read_data cuando Reset es 1.
			-- Escribe en la memoria si MemWrite es 1 y MemRead es 0.
			-- Lee desde la memoria si MemRead es 1 y MemWrite es 0.
	
	 -- Proceso del multiplexor:
			-- Selecciona read_data si MemtoReg es 1.
			-- Selecciona alu_data si MemtoReg es 0.

end Behavioral;




