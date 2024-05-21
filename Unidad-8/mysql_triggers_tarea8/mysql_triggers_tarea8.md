<div align="justify">

<div align="right">

### **Rafael Martín Mayor.**

</div>

# Tarea 8 Triggers MySQL:

```sql
-- Creación de database y tablas:

CREATE DATABASE bbddalumnos;
USE bbddalumnos;

CREATE TABLE alumnos (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido1 VARCHAR(50),
    apellido2 VARCHAR(50),
    nota FLOAT
);

-- Creación de triggers:

-- Trigger 1:

DELIMITER //

CREATE TRIGGER trigger_check_nota_before_insert
BEFORE INSERT ON alumnos
FOR EACH ROW
BEGIN
    IF NEW.nota < 0 THEN
        SET NEW.nota = 0;
    ELSEIF NEW.nota > 10 THEN
        SET NEW.nota = 10;
    END IF;
END //

-- Trigger 2:

CREATE TRIGGER trigger_check_nota_before_update
BEFORE UPDATE ON alumnos
FOR EACH ROW
BEGIN
    IF NEW.nota < 0 THEN
        SET NEW.nota = 0;
    ELSEIF NEW.nota > 10 THEN
        SET NEW.nota = 10;
    END IF;
END //

DELIMITER ;


-- Una vez creados los triggers escriba varias sentencias de inserción y actualización sobre la tabla alumnos y verifica que los triggers se están ejecutando correctamente.

-- Inserciones
INSERT INTO alumnos (nombre, apellido1, apellido2, nota) VALUES ('Juan', 'Perez', 'Gomez', 8.5);
INSERT INTO alumnos (nombre, apellido1, apellido2, nota) VALUES ('Ana', 'Lopez', 'Martinez', -3);
INSERT INTO alumnos (nombre, apellido1, apellido2, nota) VALUES ('Luis', 'Garcia', 'Fernandez', 12);

-- Actualizaciones
UPDATE alumnos SET nota = 9.5 WHERE id = 1;
UPDATE alumnos SET nota = -5 WHERE id = 2;
UPDATE alumnos SET nota = 11 WHERE id = 3;

-- Verificación de los valores de notas
SELECT * FROM alumnos;

/**
+----+--------+-----------+-----------+------+
| id | nombre | apellido1 | apellido2 | nota |
+----+--------+-----------+-----------+------+
|  1 | Juan   | Perez     | Gomez     |  9.5 |
|  2 | Ana    | Lopez     | Martinez  |    0 |
|  3 | Luis   | Garcia    | Fernandez |   10 |
+----+--------+-----------+-----------+------+
3 rows in set (0,03 sec)
**/


-- Creación de procedimientos:

-- Procedimiento 1:

DELIMITER //

CREATE PROCEDURE insert_alumnos_min_max_3_10(
    IN num_alumnos INT,
    IN min_nota FLOAT,
    IN max_nota FLOAT
)
BEGIN
    DECLARE i INT DEFAULT 0;
    WHILE i < num_alumnos DO
        INSERT INTO alumnos (nombre, apellido1, apellido2, nota) VALUES (
            CONCAT('Alumno', i),
            'Apellido1',
            'Apellido2',
            min_nota + (RAND() * (max_nota - min_nota))
        );
        SET i = i + 1;
    END WHILE;
END //

DELIMITER ;


-- Procedimiento 2:

DELIMITER //

CREATE PROCEDURE insert_alumnos_min_max_any(
    IN num_alumnos INT,
    IN min_nota FLOAT,
    IN max_nota FLOAT
)
BEGIN
    DECLARE i INT DEFAULT 0;
    WHILE i < num_alumnos DO
        INSERT INTO alumnos (nombre, apellido1, apellido2, nota) VALUES (
            CONCAT('Alumno', i),
            'Apellido1',
            'Apellido2',
            min_nota + (RAND() * (max_nota - min_nota))
        );
        SET i = i + 1;
    END WHILE;
END //

DELIMITER ;


-- Realiza los procedimientos y verifica el comportamiento llamando a este con los parámetros adecuados.

-- Llamada Procedimiento 1:
CALL insert_alumnos_min_max_3_10(5, 3, 10);

-- Verificación
SELECT * FROM alumnos;

/**
+----+---------+-----------+-----------+---------+
| id | nombre  | apellido1 | apellido2 | nota    |
+----+---------+-----------+-----------+---------+
|  1 | Juan    | Perez     | Gomez     |     9.5 |
|  2 | Ana     | Lopez     | Martinez  |       0 |
|  3 | Luis    | Garcia    | Fernandez |      10 |
|  4 | Alumno0 | Apellido1 | Apellido2 | 3.36411 |
|  5 | Alumno1 | Apellido1 | Apellido2 |  8.8123 |
|  6 | Alumno2 | Apellido1 | Apellido2 | 9.96917 |
|  7 | Alumno3 | Apellido1 | Apellido2 | 6.40897 |
|  8 | Alumno4 | Apellido1 | Apellido2 | 6.13733 |
+----+---------+-----------+-----------+---------+
8 rows in set (0,00 sec)
**/

-- Llamada Procedimiento 2:
CALL insert_alumnos_min_max_any(5, -10, 12);

-- Verificación
SELECT * FROM alumnos;

/**
+----+---------+-----------+-----------+---------+
| id | nombre  | apellido1 | apellido2 | nota    |
+----+---------+-----------+-----------+---------+
|  1 | Juan    | Perez     | Gomez     |     9.5 |
|  2 | Ana     | Lopez     | Martinez  |       0 |
|  3 | Luis    | Garcia    | Fernandez |      10 |
|  4 | Alumno0 | Apellido1 | Apellido2 | 3.36411 |
|  5 | Alumno1 | Apellido1 | Apellido2 |  8.8123 |
|  6 | Alumno2 | Apellido1 | Apellido2 | 9.96917 |
|  7 | Alumno3 | Apellido1 | Apellido2 | 6.40897 |
|  8 | Alumno4 | Apellido1 | Apellido2 | 6.13733 |
|  9 | Alumno0 | Apellido1 | Apellido2 | 7.15916 |
| 10 | Alumno1 | Apellido1 | Apellido2 |  2.2153 |
| 11 | Alumno2 | Apellido1 | Apellido2 |       0 |
| 12 | Alumno3 | Apellido1 | Apellido2 | 1.34904 |
| 13 | Alumno4 | Apellido1 | Apellido2 |       0 |
+----+---------+-----------+-----------+---------+
13 rows in set (0,00 sec)
**/

```

</div>