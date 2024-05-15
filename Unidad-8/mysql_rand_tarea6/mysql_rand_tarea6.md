<div align="justify">

<div align="right">

### **Rafael Martín Mayor.**

</div>

# Tarea 6 RAND MySQL:

```sql
-- Carga BBDD:

source empresa.sql

-- Visualización tabla empleados:

select * from empleados;

/**
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | Juan   | 3000.00 |
|  2 | María  | 3500.00 |
|  3 | Pedro  | 3200.00 |
+----+--------+---------+
3 rows in set (0,00 sec)
**/


-- Dado el procedimiento base:

DELIMITER //

CREATE PROCEDURE my_loop(IN iterations INT)
BEGIN
    DECLARE counter INT DEFAULT 0;

    WHILE counter < iterations DO
        -- Coloca aquí el código que deseas ejecutar en cada iteración del bucle
        -- Por ejemplo, puedes imprimir el valor del contador
        SELECT counter;

        SET counter = counter + 1;
    END WHILE;
END//

DELIMITER ;

-- Llama al procedimiento 
CALL my_loop(5);


-- Inserta cinco filas en la tabla empleados con nombres aleatorios generados usando la función CONCAT() junto con RAND().

DELIMITER //

CREATE PROCEDURE my_loop(IN iterations INT)
BEGIN
    DECLARE counter INT DEFAULT 0;
    DECLARE random_salary DECIMAL(10, 2);
    DECLARE random_name VARCHAR(100);

    WHILE counter < iterations DO
        SET random_name = CONCAT('Empleado', ROUND(RAND() * 10000));
        SET random_salary = FLOOR(RAND() * (10000 - 2000 + 1)) + 2000;

        INSERT INTO empleados (nombre, salario) VALUES (random_name, random_salary);

        SET counter = counter + 1;
    END WHILE;
END//

DELIMITER ;

CALL my_loop(5);

-- Salida:

select * from empleados;

/**
+----+--------------+---------+
| id | nombre       | salario |
+----+--------------+---------+
|  1 | Juan         | 3000.00 |
|  2 | María        | 3500.00 |
|  3 | Pedro        | 3200.00 |
|  4 | Empleado5230 | 9656.00 |
|  5 | Empleado2159 | 3669.00 |
|  6 | Empleado3958 | 4823.00 |
|  7 | Empleado5769 | 8608.00 |
|  8 | Empleado3991 | 6140.00 |
+----+--------------+---------+
8 rows in set (0,00 sec)
**/


-- Inserta tres filas en la tabla empleados con nombres aleatorios generados usando la función UUID().

DELIMITER //

CREATE PROCEDURE insert_empleados_with_uuid(IN iterations INT)
BEGIN
    DECLARE counter INT DEFAULT 0;
    DECLARE random_salary DECIMAL(10, 2);
    DECLARE random_name VARCHAR(36);

    WHILE counter < iterations DO
        SET random_name = UUID();
        SET random_salary = FLOOR(RAND() * (10000 - 2000 + 1)) + 2000;

        INSERT INTO empleados (nombre, salario) VALUES (random_name, random_salary);

        SET counter = counter + 1;
    END WHILE;
END//

DELIMITER ;

CALL insert_empleados_with_uuid(3);

-- Salida:

select * from empleados;

/**
+----+--------------------------------------+---------+
| id | nombre                               | salario |
+----+--------------------------------------+---------+
|  1 | Juan                                 | 3000.00 |
|  2 | María                                | 3500.00 |
|  3 | Pedro                                | 3200.00 |
|  4 | Empleado5230                         | 9656.00 |
|  5 | Empleado2159                         | 3669.00 |
|  6 | Empleado3958                         | 4823.00 |
|  7 | Empleado5769                         | 8608.00 |
|  8 | Empleado3991                         | 6140.00 |
|  9 | 0bf01f09-12b6-11ef-9772-080027740ce2 | 5121.00 |
| 10 | 0bf0a5f0-12b6-11ef-9772-080027740ce2 | 5186.00 |
| 11 | 0bf104c4-12b6-11ef-9772-080027740ce2 | 8568.00 |
+----+--------------------------------------+---------+
11 rows in set (0,00 sec)
**/


-- Inserta dos filas en la tabla empleados con nombres aleatorios generados usando la función RAND() junto con ORDER BY RAND().

DELIMITER //

CREATE PROCEDURE insert_empleados_random()
BEGIN
    INSERT INTO empleados (nombre, salario)
    SELECT CONCAT('Empleado', ROUND(RAND() * 10000)), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000
    FROM (SELECT 1 AS num UNION SELECT 2 AS num) AS sub
    ORDER BY RAND()
    LIMIT 2;
END//

DELIMITER ;

CALL insert_empleados_random();


-- Salida:

select * from empleados;

/**
+----+--------------------------------------+---------+
| id | nombre                               | salario |
+----+--------------------------------------+---------+
|  1 | Juan                                 | 3000.00 |
|  2 | María                                | 3500.00 |
|  3 | Pedro                                | 3200.00 |
|  4 | Empleado5230                         | 9656.00 |
|  5 | Empleado2159                         | 3669.00 |
|  6 | Empleado3958                         | 4823.00 |
|  7 | Empleado5769                         | 8608.00 |
|  8 | Empleado3991                         | 6140.00 |
|  9 | 0bf01f09-12b6-11ef-9772-080027740ce2 | 5121.00 |
| 10 | 0bf0a5f0-12b6-11ef-9772-080027740ce2 | 5186.00 |
| 11 | 0bf104c4-12b6-11ef-9772-080027740ce2 | 8568.00 |
| 12 | Empleado1444                         | 9779.00 |
| 13 | Empleado862                          | 7614.00 |
+----+--------------------------------------+---------+
13 rows in set (0,00 sec)
**/


-- Inserta cuatro filas en la tabla empleados con nombres aleatorios generados usando la función SUBSTRING_INDEX(UUID(), '-', -1).

DELIMITER //

CREATE PROCEDURE insert_empleados_with_uuid_part(IN iterations INT)
BEGIN
    DECLARE counter INT DEFAULT 0;
    DECLARE random_salary DECIMAL(10, 2);
    DECLARE random_name VARCHAR(36);

    WHILE counter < iterations DO
        SET random_name = SUBSTRING_INDEX(UUID(), '-', -1);
        SET random_salary = FLOOR(RAND() * (10000 - 2000 + 1)) + 2000;

        INSERT INTO empleados (nombre, salario) VALUES (random_name, random_salary);

        SET counter = counter + 1;
    END WHILE;
END//

DELIMITER ;

CALL insert_empleados_with_uuid_part(4);


-- Salida:

select * from empleados;

/**
+----+--------------------------------------+---------+
| id | nombre                               | salario |
+----+--------------------------------------+---------+
|  1 | Juan                                 | 3000.00 |
|  2 | María                                | 3500.00 |
|  3 | Pedro                                | 3200.00 |
|  4 | Empleado5230                         | 9656.00 |
|  5 | Empleado2159                         | 3669.00 |
|  6 | Empleado3958                         | 4823.00 |
|  7 | Empleado5769                         | 8608.00 |
|  8 | Empleado3991                         | 6140.00 |
|  9 | 0bf01f09-12b6-11ef-9772-080027740ce2 | 5121.00 |
| 10 | 0bf0a5f0-12b6-11ef-9772-080027740ce2 | 5186.00 |
| 11 | 0bf104c4-12b6-11ef-9772-080027740ce2 | 8568.00 |
| 12 | Empleado1444                         | 9779.00 |
| 13 | Empleado862                          | 7614.00 |
| 15 | 080027740ce2                         | 5427.00 |
| 16 | 080027740ce2                         | 3799.00 |
| 17 | 080027740ce2                         | 8715.00 |
| 18 | 080027740ce2                         | 6174.00 |
+----+--------------------------------------+---------+
17 rows in set (0,00 sec)
**/


-- Inserta seis filas en la tabla empleados con nombres aleatorios generados usando la función RAND() y una semilla diferente.

DELIMITER //

CREATE PROCEDURE insert_empleados_with_seed(IN iterations INT)
BEGIN
    DECLARE counter INT DEFAULT 1;
    DECLARE random_salary DECIMAL(10, 2);
    DECLARE random_name VARCHAR(100);

    WHILE counter <= iterations DO
        SET random_name = CONCAT('Empleado', ROUND(RAND(counter) * 10000));
        SET random_salary = FLOOR(RAND(counter) * (10000 - 2000 + 1)) + 2000;

        INSERT INTO empleados (nombre, salario) VALUES (random_name, random_salary);

        SET counter = counter + 1;
    END WHILE;
END//

DELIMITER ;


CALL insert_empleados_with_seed(6);


-- Salida:

select * from empleados;

/**
+----+--------------------------------------+---------+
| id | nombre                               | salario |
+----+--------------------------------------+---------+
|  1 | Juan                                 | 3000.00 |
|  2 | María                                | 3500.00 |
|  3 | Pedro                                | 3200.00 |
|  4 | Empleado5230                         | 9656.00 |
|  5 | Empleado2159                         | 3669.00 |
|  6 | Empleado3958                         | 4823.00 |
|  7 | Empleado5769                         | 8608.00 |
|  8 | Empleado3991                         | 6140.00 |
|  9 | 0bf01f09-12b6-11ef-9772-080027740ce2 | 5121.00 |
| 10 | 0bf0a5f0-12b6-11ef-9772-080027740ce2 | 5186.00 |
| 11 | 0bf104c4-12b6-11ef-9772-080027740ce2 | 8568.00 |
| 12 | Empleado1444                         | 9779.00 |
| 13 | Empleado862                          | 7614.00 |
| 15 | 080027740ce2                         | 5427.00 |
| 16 | 080027740ce2                         | 3799.00 |
| 17 | 080027740ce2                         | 8715.00 |
| 18 | 080027740ce2                         | 6174.00 |
| 19 | Empleado4054                         | 5243.00 |
| 20 | Empleado6556                         | 7245.00 |
| 21 | Empleado9058                         | 9247.00 |
| 22 | Empleado1560                         | 3247.00 |
| 23 | Empleado4061                         | 5249.00 |
| 24 | Empleado6563                         | 7251.00 |
+----+--------------------------------------+---------+
23 rows in set (0,00 sec)
**/
```


</div>