<div align="justify">

<div align="right">

### **Rafael Martín Mayor.**

</div>

# Tarea 5 Cursores MySQL:

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

-- Escribe un procedimiento almacenado que copie los nombres de todos los empleados cuyo salario sea superior a 3000 en una nueva tabla llamada 'empleados_destino'. Es necesario crear la tabla empleados_destino.

  DELIMITER //
  CREATE PROCEDURE empleados_3000()
  BEGIN
      DECLARE done INT DEFAULT FALSE;
      DECLARE emp_nombre VARCHAR(100);
      DECLARE emp_salario DECIMAL(10, 2);
      DECLARE cur CURSOR FOR SELECT nombre, salario FROM empleados;
      DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

      CREATE TABLE IF NOT EXISTS empleados_destino (emp_nombre VARCHAR(100));
      
      OPEN cur;
      read_loop: LOOP
          FETCH cur INTO emp_nombre, emp_salario;
          IF done THEN
              LEAVE read_loop;
          END IF;
          INSERT INTO empleados_destino(emp_nombre) select distinct emp_nombre from empleados where emp_salario > 3000;
      END LOOP;
      CLOSE cur;
  END //
  DELIMITER ;

-- Llamada al procedimiento:

CALL empleados_3000();

-- Salida:

select * from empleados_destino;
/**
+------------+
| emp_nombre |
+------------+
| María      |
| Pedro      |
+------------+
2 rows in set (0,00 sec)
**/

-- No sale Juan porque tiene justo 3000.00 y es para salarios superiores (>) a 3000.


-- Escribe un procedimiento almacenado que seleccione los empleados cuyos nombres contienen la letra 'a' y aumente sus salarios en un 10%.


  DELIMITER //
  CREATE PROCEDURE aumentar_salarios_a()
  BEGIN
      DECLARE done INT DEFAULT FALSE;
      DECLARE emp_id INT;
      DECLARE emp_nombre VARCHAR(100);
      DECLARE emp_salario DECIMAL(10, 2);
      DECLARE cur CURSOR FOR SELECT id, nombre, salario FROM empleados WHERE nombre REGEXP '^A';
      DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

      OPEN cur;
      read_loop: LOOP
          FETCH cur INTO emp_id, emp_nombre, emp_salario;
          IF done THEN
              LEAVE read_loop;
          END IF;
          UPDATE empleados SET salario = emp_salario * 1.1 WHERE id = emp_id;
      END LOOP;
      CLOSE cur;
  END //
  DELIMITER ;

-- Llamada al procedimiento:

CALL aumentar_salarios_a();

-- Salida:

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

-- No aumenta ningún salario porque ningún empleado tiene un nombre que empiece por A.


-- Escribe un procedimiento almacenado que seleccione empleados cuyos IDs estén en un rango específico, por ejemplo, entre 2 y 3.

  DELIMITER //
  CREATE PROCEDURE seleccionar_empleados_por_rango(IN inicio_id INT, IN fin_id INT)
  BEGIN
      DECLARE done INT DEFAULT FALSE;
      DECLARE emp_id INT;
      DECLARE emp_nombre VARCHAR(100);
      DECLARE emp_salario DECIMAL(10, 2);
      DECLARE cur CURSOR FOR SELECT id, nombre, salario FROM empleados WHERE id BETWEEN inicio_id AND fin_id;
      DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

      OPEN cur;
      read_loop: LOOP
          FETCH cur INTO emp_id, emp_nombre, emp_salario;
          IF done THEN
              LEAVE read_loop;
          END IF;
          SELECT emp_id, emp_nombre, emp_salario;
      END LOOP;
      CLOSE cur;
  END //
  DELIMITER ;


-- Llamada al procedimiento.

CALL seleccionar_empleados_por_rango(2, 3);

-- Salida:

/**
+--------+------------+-------------+
| emp_id | emp_nombre | emp_salario |
+--------+------------+-------------+
|      2 | María      |     3500.00 |
+--------+------------+-------------+
1 row in set (0,01 sec)

+--------+------------+-------------+
| emp_id | emp_nombre | emp_salario |
+--------+------------+-------------+
|      3 | Pedro      |     3200.00 |
+--------+------------+-------------+
1 row in set (0,01 sec)

Query OK, 0 rows affected (0,01 sec)
**/


-- Escribe un procedimiento almacenado que elimine todos los empleados cuyo salario esté entre 2000 y 2500.

  DELIMITER //
  CREATE PROCEDURE eliminar_empleados_por_rango_salario(IN salario_min DECIMAL(10,2), IN salario_max DECIMAL(10,2))
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
          DELETE FROM empleados WHERE salario BETWEEN salario_min AND salario_max;
      END LOOP;
      CLOSE cur;
  END //
  DELIMITER ;


-- Llamada al procedimiento.

CALL eliminar_empleados_por_rango_salario(2000, 2500);

-- Salida:

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


-- Escribe un procedimiento almacenado que aumente el salario de un empleado específico cuyo nombre se pasa como parámetro en un 20%.

  DELIMITER //
  CREATE PROCEDURE aumentar_salario_empleado(IN input_emp_nombre VARCHAR(100))
  BEGIN
      DECLARE done INT DEFAULT FALSE;
      DECLARE emp_nombre VARCHAR(100);
      DECLARE emp_salario DECIMAL(10, 2);
      DECLARE cur CURSOR FOR SELECT nombre, salario FROM empleados;
      DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

      OPEN cur;
      read_loop: LOOP
          FETCH cur INTO emp_nombre, emp_salario;
          IF done THEN
              LEAVE read_loop;
          END IF;
          UPDATE empleados SET salario = salario * 1.2 WHERE emp_nombre = input_emp_nombre;
      END LOOP;
      CLOSE cur;
  END //
  DELIMITER ;

-- Llamada al procedimiento:

CALL aumentar_salario_empleado('Juan');

-- Salida:

select * from empleados;

/**
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | Juan   | 3600.00 |
|  2 | María  | 4200.00 |
|  3 | Pedro  | 3840.00 |
+----+--------+---------+
3 rows in set (0,00 sec)
**/
```

</div>