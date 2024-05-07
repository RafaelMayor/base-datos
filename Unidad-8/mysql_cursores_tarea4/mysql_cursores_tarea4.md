<div align="justify">

<div align="right">

### **Rafael Martín Mayor.**

</div>

# Tarea 4 Cursores MySQL:

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

-- Creación procedimiento que aumente el salario de los empleados en un porcentaje dado:

DELIMITER //
CREATE PROCEDURE aumentar_salarios(IN porcentaje DECIMAL(5,2))
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE emp_id INT;
    DECLARE emp_nombre VARCHAR(100);
    DECLARE emp_salario DECIMAL(10, 2);
    DECLARE cur CURSOR FOR SELECT id, nombre, salario FROM empleados;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO emp_id, emp_nombre, emp_salario;
        IF done THEN
            LEAVE read_loop;
        END IF;
        UPDATE empleados SET salario = salario * (1 + porcentaje / 100) WHERE id = emp_id;
    END LOOP;
    CLOSE cur;
END //
DELIMITER ;

-- Llamada al procedimiento:

CALL aumentar_salarios(10);

-- Salida:

select * from empleados;

/**
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | Juan   | 3300.00 |
|  2 | María  | 3850.00 |
|  3 | Pedro  | 3520.00 |
+----+--------+---------+
3 rows in set (0,00 sec)
**/


-- Escribe un procedimiento almacenado que aumente los salarios de todos los empleados en un 5%, pero excluya a aquellos cuyo salario sea superior a 3200. El procedimiento debe tener parámetros de entrada.

DELIMITER //
CREATE PROCEDURE aumentar_salarios1(IN porcentaje DECIMAL(5,2))
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE emp_id INT;
    DECLARE emp_nombre VARCHAR(100);
    DECLARE emp_salario DECIMAL(10, 2);
    DECLARE cur CURSOR FOR SELECT id, nombre, salario FROM empleados;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO emp_id, emp_nombre, emp_salario;
        IF done THEN
            LEAVE read_loop;
        END IF;
        IF emp_salario <= 3200.00 THEN
            UPDATE empleados SET salario = salario * (1 + porcentaje / 100) WHERE id = emp_id;
        END IF;
    END LOOP;
    CLOSE cur;
END //
DELIMITER ;


-- Llamada al procedimiento:

CALL aumentar_salarios1(5);

-- Salida:

select * from empleados;

/**
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | Juan   | 3300.00 |
|  2 | María  | 3850.00 |
|  3 | Pedro  | 3520.00 |
+----+--------+---------+
3 rows in set (0,00 sec)
**/

-- Ninguno ha aumentado porque todos los salarios son superiores a 3200.


-- Escribe un procedimiento almacenado que calcule el salario anual de cada empleado (asumiendo que trabajan todo el año) y lo imprima.

DELIMITER //
CREATE PROCEDURE calcular_salario_anual()
BEGIN
    DECLARE emp_id INT;
    DECLARE emp_nombre VARCHAR(100);
    DECLARE emp_salario DECIMAL(10, 2);
    DECLARE done INT DEFAULT FALSE;
    DECLARE cur CURSOR FOR SELECT id, nombre, salario FROM empleados;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO emp_id, emp_nombre, emp_salario;
        IF done THEN
            LEAVE read_loop;
        END IF;
        SELECT CONCAT('Empleado ', emp_nombre, ': Salario anual = $', emp_salario * 12) AS resultado;
    END LOOP;
    CLOSE cur;
END //
DELIMITER ;

-- Llamada al procedimiento:

call calcular_salario_anual();

-- Salida:

/**
+------------------------------------------+
| resultado                                |
+------------------------------------------+
| Empleado Juan: Salario anual = $39600.00 |
+------------------------------------------+
1 row in set (0,01 sec)

+--------------------------------------------+
| resultado                                  |
+--------------------------------------------+
| Empleado María: Salario anual = $46200.00  |
+--------------------------------------------+
1 row in set (0,01 sec)

+-------------------------------------------+
| resultado                                 |
+-------------------------------------------+
| Empleado Pedro: Salario anual = $42240.00 |
+-------------------------------------------+
1 row in set (0,01 sec)

Query OK, 0 rows affected (0,01 sec)
**/

-- Escribe un procedimiento almacenado que cuente y muestre el número de empleados en cada rango de salario (por ejemplo, menos de 3000, entre 3000 y 5000, más de 5000). El procedimiento debe tener parámetros de entrada.

DELIMITER //
CREATE PROCEDURE contar_empleados_por_rango_salario(
    IN salario_min DECIMAL(10, 2),
    IN salario_max DECIMAL(10, 2)
)
BEGIN
    DECLARE emp_id INT;
    DECLARE emp_salario DECIMAL(10, 2);
    DECLARE done INT DEFAULT FALSE;
    DECLARE empleados_menor INT DEFAULT 0;
    DECLARE empleados_entre INT DEFAULT 0;
    DECLARE empleados_mayor INT DEFAULT 0;

    DECLARE cur CURSOR FOR SELECT id, salario FROM empleados;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO emp_id, emp_salario;
        IF done THEN
            LEAVE read_loop;
        END IF;
        IF emp_salario < salario_min THEN
            SET empleados_menor = empleados_menor + 1;
        ELSEIF emp_salario BETWEEN salario_min AND salario_max THEN
            SET empleados_entre = empleados_entre + 1;
        ELSE
            SET empleados_mayor = empleados_mayor + 1;
        END IF;
    END LOOP;
    CLOSE cur;

    SELECT CONCAT('Menos de ', salario_min, ': ', empleados_menor) AS rango_salario;
    SELECT CONCAT('Entre ', salario_min, ' y ', salario_max, ': ', empleados_entre) AS rango_salario;
    SELECT CONCAT('Más de ', salario_max, ': ', empleados_mayor) AS rango_salario;
END //
DELIMITER ;

-- Llamada al procedimiento:

call contar_empleados_por_rango_salario(3000, 5000);

-- Salida:

/**
+---------------------+
| rango_salario       |
+---------------------+
| Menos de 3000.00: 0 |
+---------------------+
1 row in set (0,01 sec)

+----------------------------+
| rango_salario              |
+----------------------------+
| Entre 3000.00 y 5000.00: 3 |
+----------------------------+
1 row in set (0,01 sec)

+--------------------+
| rango_salario      |
+--------------------+
| Más de 5000.00: 0  |
+--------------------+
1 row in set (0,01 sec)

Query OK, 0 rows affected (0,01 sec)
**/
```

</div>