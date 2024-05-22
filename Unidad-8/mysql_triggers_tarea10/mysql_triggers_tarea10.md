<div align="justify">

<div align="right">

### **Rafael Martín Mayor.**

</div>

# Tarea 10 Triggers MySQL:

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


-- Creación tabla log_cambios_email:

CREATE TABLE IF NOT EXISTS log_cambios_email (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_alumno INT UNSIGNED,
    fecha_hora DATETIME NOT NULL,
    old_email VARCHAR(100),
    new_email VARCHAR(100),
    FOREIGN KEY (id_alumno) REFERENCES alumnos(id)
);

-- Creación tabla log_alumnos_eliminados:

CREATE TABLE IF NOT EXISTS log_alumnos_eliminados (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_alumno INT UNSIGNED,
    fecha_hora DATETIME NOT NULL,
    nombre VARCHAR(50),
    apellido1 VARCHAR(50),
    apellido2 VARCHAR(50),
    email VARCHAR(100),
    FOREIGN KEY (id_alumno) REFERENCES alumnos(id)
);



-- Nuevos triggers

-- Trigger: trigger_guardar_email_after_update

DELIMITER //

CREATE TRIGGER trigger_guardar_email_after_update
AFTER UPDATE ON alumnos
FOR EACH ROW
BEGIN
    IF NEW.email <> OLD.email THEN
        INSERT INTO log_cambios_email (
            id_alumno,
            fecha_hora,
            old_email,
            new_email
        )
        VALUES (
            NEW.id,
            NOW(),
            OLD.email,
            NEW.email
        );
    END IF;
END //

DELIMITER ;



-- Trigger: trigger_guardar_alumnos_eliminados

DELIMITER //

CREATE TRIGGER trigger_guardar_alumnos_eliminados
AFTER DELETE ON alumnos
FOR EACH ROW
BEGIN
    INSERT INTO log_alumnos_eliminados (
        id_alumno,
        fecha_hora,
        nombre,
        apellido1,
        apellido2,
        email
    )
        VALUES (
            OLD.id,
            NOW(),
            OLD.nombre,
            OLD.apellido1,
            OLD.apellido2,
            OLD.email
        );
END //

DELIMITER ;


-- Actualizaciones y eliminaciones de prueba:

UPDATE alumnos
SET email = CONCAT(LOWER(SUBSTRING(apellido1, 1, 3)), '_', LOWER(SUBSTRING(apellido2, 1, 3)), '@dominio.com')
WHERE id IN (1, 2, 3);

SET FOREIGN_KEY_CHECKS=0;
DELETE FROM alumnos
WHERE id IN (4, 5, 6);
SET FOREIGN_KEY_CHECKS=1;



-- Consulta para ver los últimos cambios de email:


SELECT * FROM log_cambios_email
ORDER BY fecha_hora DESC
LIMIT 10;

/**
+----+-----------+---------------------+-----------------------+----------------------+
| id | id_alumno | fecha_hora          | old_email             | new_email            |
+----+-----------+---------------------+-----------------------+----------------------+
|  1 |         1 | 2024-05-22 20:27:47 | cgarper@ejemplo.com   | gar_pér@dominio.com  |
|  2 |         2 | 2024-05-22 20:27:47 | ana.lopez@example.com | lóp_mar@dominio.com  |
|  3 |         3 | 2024-05-22 20:27:47 | jperlop@ejemplo.com   | per_lop@dominio.com  |
+----+-----------+---------------------+-----------------------+----------------------+
3 rows in set (0,00 sec)
**/


-- Consulta para ver los alumnos eliminados:

SELECT * FROM log_alumnos_eliminados;

/**
+----+-----------+---------------------+--------+-----------+-----------+---------------------+
| id | id_alumno | fecha_hora          | nombre | apellido1 | apellido2 | email               |
+----+-----------+---------------------+--------+-----------+-----------+---------------------+
|  4 |         4 | 2024-05-22 20:38:50 | Carlos | Lopez     | Lopez     | cloplop@ejemplo.com |
|  5 |         5 | 2024-05-22 20:38:50 | Juan   | Garcia    | Sanchez   | jgarsan@ejemplo.com |
|  6 |         6 | 2024-05-22 20:38:50 | Carlos | Martinez  | Perez     | cmarper@ejemplo.com |
+----+-----------+---------------------+--------+-----------+-----------+---------------------+
3 rows in set (0,00 sec)
**/


```

</div>