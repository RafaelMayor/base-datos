<div align="justify">

<div align="right">

### **Rafael Martín Mayor.**

</div>

# Tarea 7 Procedimientos y Funciones MySQL:

```sql
-- Creación de database y tablas:
CREATE DATABASE IF NOT EXISTS salario;

USE salario;

CREATE TABLE IF NOT EXISTS persona (
    Identificador VARCHAR(50) PRIMARY KEY,
    Nombre VARCHAR(100),
    Salario_base DECIMAL(10, 2),
    Subsidio DECIMAL(10, 2),
    Salud DECIMAL(10, 2),
    Pension DECIMAL(10, 2),
    Bono DECIMAL(10, 2),
    Integral DECIMAL(10, 2)
);

-- Crear procedimiento para insertar registros de forma aleatoria
DELIMITER $$
CREATE PROCEDURE InsertarRegistrosAleatorios(IN numero_registros INT)
BEGIN
    DECLARE contador INT DEFAULT 0;
    DECLARE salario DECIMAL(10, 2);
    DECLARE nombre_persona VARCHAR(100);
    
    WHILE contador < numero_registros DO
        SET nombre_persona = CONCAT('Persona_', contador+1);
        SET salario = ROUND(RAND() * 10000 + 1000, 2);
        
        INSERT INTO persona (Identificador, Nombre, Salario_base)
        VALUES (CONCAT('ID', contador+1), nombre_persona, salario);
        
        SET contador = contador + 1;
    END WHILE;
END$$
DELIMITER ;

-- Crear función para calcular el subsidio de transporte
CREATE FUNCTION subsidio_transporte(identificador VARCHAR(50)) RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE subsidio DECIMAL(10, 2);
    SELECT Salario_base * 0.07 INTO subsidio FROM persona WHERE Identificador = identificador;
    UPDATE persona SET Subsidio = subsidio WHERE Identificador = identificador;
    RETURN subsidio;
END$$

-- Crear función para calcular la salud
CREATE FUNCTION salud(identificador VARCHAR(50)) RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE salud DECIMAL(10, 2);
    SELECT Salario_base * 0.04 INTO salud FROM persona WHERE Identificador = identificador;
    UPDATE persona SET Salud = salud WHERE Identificador = identificador;
    RETURN salud;
END$$

-- Crear función para calcular la pensión
CREATE FUNCTION pension(identificador VARCHAR(50)) RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE pension DECIMAL(10, 2);
    SELECT Salario_base * 0.04 INTO pension FROM persona WHERE Identificador = identificador;
    UPDATE persona SET Pension = pension WHERE Identificador = identificador;
    RETURN pension;
END$$

-- Crear función para calcular el bono
CREATE FUNCTION bono(identificador VARCHAR(50)) RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE bono DECIMAL(10, 2);
    SELECT Salario_base * 0.08 INTO bono FROM persona WHERE Identificador = identificador;
    UPDATE persona SET Bono = bono WHERE Identificador = identificador;
    RETURN bono;
END$$

-- Crear función para calcular el salario integral
CREATE FUNCTION integral(identificador VARCHAR(50)) RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE salario_integral DECIMAL(10, 2);
    SELECT (Salario_base - Salud - Pension + Bono + Subsidio) INTO salario_integral FROM persona WHERE Identificador = identificador;
    UPDATE persona SET Integral = salario_integral WHERE Identificador = identificador;
    RETURN salario_integral;
END$$

```


</div>