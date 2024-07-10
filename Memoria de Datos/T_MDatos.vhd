--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:57:54 06/22/2024
-- Design Name:   
-- Module Name:   C:/Users/Fernando/Desktop/MDatos/MDatos/T_MDatos.vhd
-- Project Name:  MDatos
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MDatos
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
USE ieee.numeric_std.ALL;
USE ieee.std_logic_textio.ALL;  -- Para trabajar con textio
USE std.textio.ALL;  -- Para trabajar con textio

ENTITY T_MDatos IS
END T_MDatos;

ARCHITECTURE behavior OF T_MDatos IS 

    -- Declaración del componente para la Unidad Bajo Prueba (UUT)
    COMPONENT MDatos
        PORT(
            Reset : IN  std_logic;
            Clock : IN  std_logic;
            WriteData : IN  std_logic_vector(31 downto 0);
            Address : IN  std_logic_vector(31 downto 0);
            MemWrite : IN  std_logic;
            MemRead : IN  std_logic;
            MemtoReg : IN  std_logic;
            Salida_mux : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;

    -- Entradas
    signal Reset : std_logic := '0';
    signal Clock : std_logic := '0';
    signal WriteData : std_logic_vector(31 downto 0) := (others => '0');
    signal Address : std_logic_vector(31 downto 0) := (others => '0');
    signal MemWrite : std_logic := '0';
    signal MemRead : std_logic := '0';
    signal MemtoReg : std_logic := '0';

    -- Salidas
    signal Salida_mux : std_logic_vector(31 downto 0);

    -- Definiciones del período de reloj
    constant Clock_period : time := 10 ns;

    -- Archivo de salida
    file memory_file : text open write_mode is "Contenido_Memoria_Datos.txt";

    -- Función para convertir std_logic_vector a string
    function to_string(slv: std_logic_vector) return string is
        variable str: string(1 to slv'length);
    begin
        for i in slv'range loop
            if slv(i) = '1' then
                str(i + 1 - slv'low) := '1';
            else
                str(i + 1 - slv'low) := '0';
            end if;
        end loop;
        return str;
    end function;
	 


BEGIN

    -- Instanciar la Unidad Bajo Prueba (UUT)
    uut: MDatos PORT MAP (
        Reset => Reset,
        Clock => Clock,
        WriteData => WriteData,
        Address => Address,
        MemWrite => MemWrite,
        MemRead => MemRead,
        MemtoReg => MemtoReg,
        Salida_mux => Salida_mux
    );

    -- Definiciones del proceso de reloj
    Clock_process : process
    begin
        Clock <= '0';
        wait for Clock_period/2;
        Clock <= '1';
        wait for Clock_period/2;
    end process;

    -- Proceso de estímulo
    stim_proc: process
        -- Variable para el ciclo de lectura de memoria
        variable i : integer := 0;
        variable l : line;
    begin
        -- Prueba de escritura y lectura simultánea
        WriteData <= "00000000000000000000000000000001"; -- Numero (1)_10
        Address <= "00000000000000000000000000000001"; -- Direccion (1)_10
        MemWrite <= '1';
        MemRead <= '1';
        MemtoReg <= '1';
        wait for 20 ns;
		  
		  -- Escribir el contenido en el archivo después de la Prueba : 1
		  write(l, string'("Prueba: 01"));
		  write(l, string'(" | Posicion: 1"));
		  write(l, string'(" | Direccion: "));
        write(l, to_string(Address));
        write(l, string'(" | Dato: "));
        write(l, to_string(Salida_mux));
        writeline(memory_file, l);

        -- Prueba de escritura y lectura simultánea en una dirección diferente
        WriteData <= "00000000000000000000000000000001"; -- Numero (1)_10
        Address <= "00000000000000000000000000000011"; -- Direccion (3)_10
        MemWrite <= '1';
        MemRead <= '1';
        MemtoReg <= '0';
        wait for 20 ns;
		  
		  -- Escribir el contenido en el archivo después de la Prueba : 2
		  write(l, string'("Prueba: 02"));
		  write(l, string'(" | Posicion: 3"));
		  write(l, string'(" | Direccion: "));
        write(l, to_string(Address));
        write(l, string'(" | Dato: "));
        write(l, to_string(Salida_mux));
        writeline(memory_file, l);

        -- Prueba de escritura sin lectura
        WriteData <= "11110000000000000000000000000001"; -- Numero (1)_10
        Address <= "00000000000000000000000000000111"; -- Direccion (7)_10
        MemWrite <= '1';
        MemRead <= '0';
        MemtoReg <= '1'; 
        wait for 20 ns;
		  
		  -- Escribir el contenido en el archivo después de la Prueba : 3
		  write(l, string'("Prueba: 03"));
		  write(l, string'(" | Posicion: 7"));
		  write(l, string'(" | Direccion: "));
        write(l, to_string(Address));
        write(l, string'(" | Dato: "));
        write(l, to_string(Salida_mux));
        writeline(memory_file, l);

        -- Prueba de escritura sin lectura en otra dirección
        WriteData <= "00000000000000000000000000000001"; -- Numero (1)_10
        Address <= "00000000000000000000000000000011"; -- Direccion (3)_10
        MemWrite <= '1';
        MemRead <= '0';
        MemtoReg <= '0';
        wait for 20 ns;
		  
		  -- Escribir el contenido en el archivo después de la Prueba : 4
		  write(l, string'("Prueba: 04"));
		  write(l, string'(" | Posicion: 3"));
		  write(l, string'(" | Direccion: "));
        write(l, to_string(Address));
        write(l, string'(" | Dato: "));
        write(l, to_string(Salida_mux));
        writeline(memory_file, l);

        -- Prueba de lectura sin escritura
        WriteData <= "00000000000000000000000000000001"; -- Numero (1)_10
        Address <= "00000000000000000000000000000001"; -- Direccion (1)_10
        MemWrite <= '0';
        MemRead <= '1';
        MemtoReg <= '1'; 
        wait for 20 ns;
		  
		  -- Escribir el contenido en el archivo después de la Prueba : 5
		  write(l, string'("Prueba: 05"));
		  write(l, string'(" | Posicion: 1"));
		  write(l, string'(" | Direccion: "));
        write(l, to_string(Address));
        write(l, string'(" | Dato: "));
        write(l, to_string(Salida_mux));
        writeline(memory_file, l);

        -- Prueba de reset del UUT
        Reset <= '1';
        wait for 20 ns; 
        Reset <= '0';

        -- Prueba de lectura en una dirección específica después de reset
        WriteData <= "00000000000000000000000000000001"; -- Numero (1)_10
        Address <= "00000000000101000000000000001001"; -- Direccion (1310729)_10
        MemWrite <= '0';
        MemRead <= '1';
        MemtoReg <= '0';
        wait for 20 ns;
		  
		  -- Escribir el contenido en el archivo después de la Prueba : 6
		  write(l, string'("Prueba: 06"));
		  write(l, string'(" | Posicion: 1310729"));
		  write(l, string'(" | Direccion: "));
        write(l, to_string(Address));
        write(l, string'(" | Dato: "));
        write(l, to_string(Salida_mux));
        writeline(memory_file, l);

        -- Prueba de estado sin escritura ni lectura
        WriteData <= "00000000000000000000000000000001"; -- Numero (1)_10
        Address <= "00000000000000000000000000000001"; -- Direccion (1)_10
        MemWrite <= '0';
        MemRead <= '0';
        MemtoReg <= '1';
        wait for 20 ns;
		  
		  -- Escribir el contenido en el archivo después de la Prueba : 7
		  write(l, string'("Prueba: 07"));
		  write(l, string'(" | Posicion: 1"));
		  write(l, string'(" | Direccion: "));
        write(l, to_string(Address));
        write(l, string'(" | Dato: "));
        write(l, to_string(Salida_mux));
        writeline(memory_file, l);

        -- Prueba de estado sin escritura ni lectura en otra dirección
        WriteData <= "00000000000000000000000000000001"; -- Numero (1)_10
        Address <= "00000001111000000000000000000001"; -- Direccion (31457281)_10
        MemWrite <= '0';
        MemRead <= '0';
        MemtoReg <= '1';
        wait for 20 ns;
		  
		  -- Escribir el contenido en el archivo después de la Prueba : 8
		  write(l, string'("Prueba: 08"));
		  write(l, string'(" | Posicion: 31457281"));
		  write(l, string'(" | Direccion: "));
        write(l, to_string(Address));
        write(l, string'(" | Dato: "));
        write(l, to_string(Salida_mux));
        writeline(memory_file, l);

        -- Fin de las pruebas de dirección
        WriteData <= "00000000000000000000000000000000"; -- Numero (0)_10
        Address <= "00000000000000000000000000000000"; -- Direccion (0)_10 
        MemWrite <= '1';
        MemRead <= '1';
        MemtoReg <= '1';
        wait for 20 ns;
		  
		  -- Escribir el contenido en el archivo después de la Prueba : 9
		  write(l, string'("Prueba: 09"));
		  write(l, string'(" | Posicion: 0"));
		  write(l, string'(" | Direccion: "));
        write(l, to_string(Address));
        write(l, string'(" | Dato: "));
        write(l, to_string(Salida_mux));
        writeline(memory_file, l);

        -- Prueba de escritura y lectura simultánea con dirección alta
        WriteData <= "00000000000000000000000000000000"; -- Numero (0)_10 
        Address <= "10000000000000000000000000000000"; -- Direccion (2147483648)_10 
        MemWrite <= '1';
        MemRead <= '1';
        MemtoReg <= '0';
        wait for 20 ns;
		  
		  -- Escribir el contenido en el archivo después de la Prueba : 10
		  write(l, string'("Prueba: 10"));
		  write(l, string'(" | Posicion: 2147483648"));
		  write(l, string'(" | Direccion: "));
        write(l, to_string(Address));
        write(l, string'(" | Dato: "));
        write(l, to_string(Salida_mux));
        writeline(memory_file, l);

        -- Prueba de escritura sin lectura en una dirección específica
        WriteData <= "00000000000000000000001111000000"; -- Numero (960)_10 
        Address <= "00000000000000000000000000000010"; -- Direccion (2)_10  
        MemWrite <= '1';
        MemRead <= '0';
        MemtoReg <= '1'; 
        wait for 20 ns;
		  
		  -- Escribir el contenido en el archivo después de la Prueba : 11
		  write(l, string'("Prueba: 11"));
		  write(l, string'(" | Posicion: 2"));
		  write(l, string'(" | Direccion: "));
        write(l, to_string(Address));
        write(l, string'(" | Dato: "));
        write(l, to_string(Salida_mux));
        writeline(memory_file, l);

        -- Prueba de escritura sin lectura en otra dirección
        WriteData <= "00000000000000000000000000000000"; -- Numero (0)_10
        Address <= "00000000000000000000000000000110";  -- Direccion (6)_10
        MemWrite <= '1';
        MemRead <= '0';
        MemtoReg <= '0';
        wait for 20 ns;
		  
		  -- Escribir el contenido en el archivo después de la Prueba : 12
		  write(l, string'("Prueba: 12"));
		  write(l, string'(" | Posicion: 6"));
		  write(l, string'(" | Direccion: "));
        write(l, to_string(Address));
        write(l, string'(" | Dato: "));
        write(l, to_string(Salida_mux));
        writeline(memory_file, l);

        -- Prueba de lectura sin escritura en otra dirección
        WriteData <= "00000000000000000000000000000000"; -- Numero (0)_10
        Address <= "00000000000000000000000000000010";  -- Direccion (2)_10
        MemWrite <= '0';
        MemRead <= '1';
        MemtoReg <= '1'; 
        wait for 20 ns;
		  
		  -- Escribir el contenido en el archivo después de la Prueba : 13
		  write(l, string'("Prueba: 13"));
		  write(l, string'(" | Posicion: 2"));
		  write(l, string'(" | Direccion: "));
        write(l, to_string(Address));
        write(l, string'(" | Dato: "));
        write(l, to_string(Salida_mux));
        writeline(memory_file, l);

        -- Prueba de lectura sin escritura después del reset
        WriteData <= "00000000000000000000000000000000"; -- Numero (0)_10
        Address <= "00000000000000000000000001100000";  -- Direccion (96)_10
        MemWrite <= '0';
        MemRead <= '1';
        MemtoReg <= '0';
        wait for 20 ns;
		  
		  -- Escribir el contenido en el archivo después de la Prueba : 14
		  write(l, string'("Prueba: 14"));
		  write(l, string'(" | Posicion: 96"));
		  write(l, string'(" | Direccion: "));
        write(l, to_string(Address));
        write(l, string'(" | Dato: "));
        write(l, to_string(Salida_mux));
        writeline(memory_file, l);

        -- Prueba de estado sin escritura ni lectura
        WriteData <= "00000000000000000000000000000000"; -- Numero (0)_10
        Address <= "00000000000000000000000000000000";  -- Direccion (0)_10
        MemWrite <= '0';
        MemRead <= '0';
        MemtoReg <= '1';
        wait for 20 ns;
		  
		  -- Escribir el contenido en el archivo después de la Prueba : 15
		  write(l, string'("Prueba: 15"));
		  write(l, string'(" | Posicion: 0"));
		  write(l, string'(" | Direccion: "));
        write(l, to_string(Address));
        write(l, string'(" | Dato: "));
        write(l, to_string(Salida_mux));
        writeline(memory_file, l);

        -- Prueba de estado sin escritura ni lectura en otra dirección
        WriteData <= "00000000000000000000000000000000"; -- Numero (0)_10
        Address <= "00000000000000011110000000000000";  -- Direccion (122880)_10
        MemWrite <= '0';
        MemRead <= '0';
        MemtoReg <= '0';
        wait for 20 ns;
		  
		  -- Escribir el contenido en el archivo después de la Prueba : 16
		  write(l, string'("Prueba: 16"));
		  write(l, string'(" | Posicion: 122880"));
		  write(l, string'(" | Direccion: "));
        write(l, to_string(Address));
        write(l, string'(" | Dato: "));
        write(l, to_string(Salida_mux));
        writeline(memory_file, l);

        -- Fin de las pruebas de dirección 3

        -- Mostrar el contenido de la memoria
        -- for i in 0 to 1023 loop
            -- Address <= std_logic_vector(to_unsigned(i, 32));
            -- MemWrite <= '0';
            -- MemRead <= '1';
            -- wait for 10 ns;

            -- Escribir el contenido en el archivo
				-- write(l, string'("Posicion: "));
				-- write(l, i);
            -- write(l, string'(" | Direccion: "));
            -- write(l, to_string(std_logic_vector(to_unsigned(i, 32))));
            -- write(l, string'(" | Dato: "));
            -- write(l, to_string(Salida_mux));
            -- writeline(memory_file, l);
        -- end loop;

        -- Cerrar el archivo
        file_close(memory_file);

        -- Detener la simulación
        wait;
    end process;

END;






