<div align="justify">

<div align="right">

### **Rafael Martín Mayor.**

</div>

# Tarea 9 Triggers MySQL:

```sql
-- Creación de database y tablas:

CREATE DATABASE bbddalumnos;
USE bbddalumnos;

CREATE TABLE alumnos (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255),
    apellido1 VARCHAR(255),
    apellido2 VARCHAR(255),
    email VARCHAR(255)
);

-- Creación función eliminar_acentos:

DELIMITER //

CREATE FUNCTION eliminar_acentos(cadena VARCHAR(255)) RETURNS VARCHAR(255) DETERMINISTIC
BEGIN
    DECLARE resultado VARCHAR(255) DEFAULT cadena;
    SET resultado = REPLACE(resultado, 'á', 'a');
    SET resultado = REPLACE(resultado, 'é', 'e');
    SET resultado = REPLACE(resultado, 'í', 'i');
    SET resultado = REPLACE(resultado, 'ó', 'o');
    SET resultado = REPLACE(resultado, 'ú', 'u');
    SET resultado = REPLACE(resultado, 'Á', 'A');
    SET resultado = REPLACE(resultado, 'É', 'E');
    SET resultado = REPLACE(resultado, 'Í', 'I');
    SET resultado = REPLACE(resultado, 'Ó', 'O');
    SET resultado = REPLACE(resultado, 'Ú', 'U');
    RETURN resultado;
END //

DELIMITER ;

-- Creación función crear_email:

DELIMITER //

CREATE FUNCTION crear_email(nombre VARCHAR(255), apellido1 VARCHAR(255), apellido2 VARCHAR(255), dominio VARCHAR(255)) RETURNS VARCHAR(255) DETERMINISTIC
BEGIN
    DECLARE email VARCHAR(255);
    SET nombre = eliminar_acentos(LOWER(nombre));
    SET apellido1 = eliminar_acentos(LOWER(apellido1));
    SET apellido2 = eliminar_acentos(LOWER(apellido2));
    
    SET email = CONCAT(
        SUBSTRING(nombre, 1, 1),
        SUBSTRING(apellido1, 1, 3),
        SUBSTRING(apellido2, 1, 3),
        '@',
        LOWER(dominio)
    );
    
    RETURN email;
END //

DELIMITER ;

-- Creación trigger trigger_crear_email_before_insert:

DELIMITER //

CREATE TRIGGER trigger_crear_email_before_insert
BEFORE INSERT ON alumnos
FOR EACH ROW
BEGIN
    IF NEW.email IS NULL THEN
        SET NEW.email = crear_email(NEW.nombre, NEW.apellido1, NEW.apellido2, 'ejemplo.com');
    END IF;
END //

DELIMITER ;

-- Verificación mediante inserciones:

-- Insertar un registro sin email
INSERT INTO alumnos (nombre, apellido1, apellido2) VALUES ('Carlos', 'García', 'Pérez');

-- Insertar un registro con email
INSERT INTO alumnos (nombre, apellido1, apellido2, email) VALUES ('Ana', 'López', 'Martínez', 'ana.lopez@example.com');

-- Verificar los resultados
SELECT * FROM alumnos;

/**
+----+--------+-----------+-----------+-----------------------+
| id | nombre | apellido1 | apellido2 | email                 |
+----+--------+-----------+-----------+-----------------------+
|  1 | Carlos | García    | Pérez     | cgarper@ejemplo.com   |
|  2 | Ana    | López     | Martínez  | ana.lopez@example.com |
+----+--------+-----------+-----------+-----------------------+
2 rows in set (0,01 sec)
**/

-- Creación procedimiento para inserción aleatoria:

DELIMITER //

CREATE PROCEDURE insertar_alumnos_aleatorios(num_alumnos INT)
BEGIN
    DECLARE i INT DEFAULT 0;
    DECLARE nombres VARCHAR(255) DEFAULT 'Carlos,Ana,Maria,Juan,Pedro';
    DECLARE apellidos VARCHAR(255) DEFAULT 'Garcia,Lopez,Perez,Martinez,Sanchez';
    
    WHILE i < num_alumnos DO
        INSERT INTO alumnos (nombre, apellido1, apellido2)
        VALUES (
            ELT(FLOOR(1 + RAND() * 5), 'Carlos', 'Ana', 'Maria', 'Juan', 'Pedro'),
            ELT(FLOOR(1 + RAND() * 5), 'Garcia', 'Lopez', 'Perez', 'Martinez', 'Sanchez'),
            ELT(FLOOR(1 + RAND() * 5), 'Garcia', 'Lopez', 'Perez', 'Martinez', 'Sanchez')
        );
        SET i = i + 1;
    END WHILE;
END //

DELIMITER ;


-- Llamada al procedimiento:
CALL insertar_alumnos_aleatorios(10);

-- Verificación inserciones aleatorias:
SELECT * FROM alumnos;

/**
+----+--------+-----------+-----------+-----------------------+
| id | nombre | apellido1 | apellido2 | email                 |
+----+--------+-----------+-----------+-----------------------+
|  1 | Carlos | García    | Pérez     | cgarper@ejemplo.com   |
|  2 | Ana    | López     | Martínez  | ana.lopez@example.com |
|  3 | Ana    | Sanchez   | Sanchez   | asansan@ejemplo.com   |
|  4 | Carlos | Perez     | Martinez  | cpermar@ejemplo.com   |
|  5 | Juan   | Sanchez   | Sanchez   | jsansan@ejemplo.com   |
|  6 | Ana    | Lopez     | Martinez  | alopmar@ejemplo.com   |
|  7 | Juan   | Lopez     | Perez     | jlopper@ejemplo.com   |
|  8 | Juan   | Lopez     | Garcia    | jlopgar@ejemplo.com   |
|  9 | Maria  | Perez     | Perez     | mperper@ejemplo.com   |
| 10 | Maria  | Perez     | Perez     | mperper@ejemplo.com   |
| 11 | Pedro  | Sanchez   | Perez     | psanper@ejemplo.com   |
| 12 | Carlos | Lopez     | Martinez  | clopmar@ejemplo.com   |
+----+--------+-----------+-----------+-----------------------+
12 rows in set (0,00 sec)
**/
```

</div>