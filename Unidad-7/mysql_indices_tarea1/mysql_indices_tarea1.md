<div align="justify">

<div align="right">
Rafael Martín Mayor.
</div>

# Tarea 1 Índices MySQL:

### Creación de database y tablas:

```sql
CREATE DATABASE IF NOT EXISTS instituto_db;

USE instituto_db;

CREATE TABLE IF NOT EXISTS alumnos (
    numero_inscripcion INT,
    anyo_inscripcion INT,
    nombre_alumno VARCHAR(100),
    documento_alumno VARCHAR(20),
    domicilio VARCHAR(100),
    ciudad VARCHAR(50),
    provincia VARCHAR(50),
    PRIMARY KEY (numero_inscripcion, anyo_inscripcion)
);

```

### Modificado de la database y tablas:

```sql
-- Eliminar la tabla "alumnos" si existe

DROP TABLE IF EXISTS alumnos;

/**
Query OK, 0 rows affected (0,01 sec)
**/

-- Crear la tabla de alumnos con clave primaria compuesta

CREATE TABLE alumnos (
    numero_inscripcion INT,
    anyo_inscripcion INT,
    nombre_alumno VARCHAR(100),
    documento_alumno VARCHAR(20),
    domicilio VARCHAR(100),
    ciudad VARCHAR(50),
    provincia VARCHAR(50),
    PRIMARY KEY (numero_inscripcion, anyo_inscripcion)
);

/**
Query OK, 0 rows affected (0,01 sec)
**/

-- Definir los índices

CREATE UNIQUE INDEX documento_alumno_unique_idx ON alumnos (documento_alumno); -- Índice único para el campo documento_alumno

/**
Query OK, 0 rows affected (0,02 sec)
Records: 0  Duplicates: 0  Warnings: 0
**/

CREATE INDEX ciudad_provincia_idx ON alumnos (ciudad, provincia); -- Índice común para ciudad y provincia (no es único, ya que puede haber múltiples alumnos en la misma ciudad y provincia)

/**
Query OK, 0 rows affected (0,01 sec)
Records: 0  Duplicates: 0  Warnings: 0
**/

-- Ver los índices de la tabla

SHOW INDEX FROM alumnos;

/**
+---------+------------+-----------------------------+--------------+--------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table   | Non_unique | Key_name                    | Seq_in_index | Column_name        | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+---------+------------+-----------------------------+--------------+--------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| alumnos |          0 | PRIMARY                     |            1 | numero_inscripcion | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| alumnos |          0 | PRIMARY                     |            2 | anyo_inscripcion   | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| alumnos |          0 | documento_alumno_unique_idx |            1 | documento_alumno   | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| alumnos |          1 | ciudad_provincia_idx        |            1 | ciudad             | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| alumnos |          1 | ciudad_provincia_idx        |            2 | provincia          | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
+---------+------------+-----------------------------+--------------+--------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
5 rows in set (0,01 sec)
**/

-- Intentar ingresar alumnos con clave primaria repetida y documento repetido

INSERT INTO alumnos (anyo_inscripcion, numero_inscripcion, nombre_alumno, documento_alumno, domicilio, ciudad, provincia) 
VALUES (2024, 1, 'Pepe Juan', '12345678', 'Calle 1', 'Ciudad 1', 'Provincia 1');

/**
Query OK, 1 row affected (0,00 sec)
**/

SELECT * FROM alumnos;

/**
+--------------------+------------------+---------------+------------------+-----------+----------+-------------+
| numero_inscripcion | anyo_inscripcion | nombre_alumno | documento_alumno | domicilio | ciudad   | provincia   |
+--------------------+------------------+---------------+------------------+-----------+----------+-------------+
|                  1 |             2024 | Pepe Juan     | 12345678         | Calle 1   | Ciudad 1 | Provincia 1 |
+--------------------+------------------+---------------+------------------+-----------+----------+-------------+
**/

INSERT INTO alumnos (anyo_inscripcion, numero_inscripcion, nombre_alumno, documento_alumno, domicilio, ciudad, provincia) 
VALUES (2024, 2, 'Bonifacia Augusta', '12345678', 'Calle 2', 'Ciudad 2', 'Provincia 2');

/**
ERROR 1062 (23000): Duplicate entry '12345678' for key 'alumnos.documento_alumno_unique_idx'
**/

-- Ingresar varios alumnos de la misma ciudad y provincia

INSERT INTO alumnos (anyo_inscripcion, numero_inscripcion, nombre_alumno, documento_alumno, domicilio, ciudad, provincia) 
VALUES 
    (2024, 3, 'Mañano Partrucio', '87654321', 'Calle 3', 'Ciudad 3', 'Provincia 3'),
    (2024, 4, 'Tío Gilito', '77777777', 'Calle 4', 'Ciudad 3', 'Provincia 3');

/**
Query OK, 2 rows affected (0,00 sec)
Records: 2  Duplicates: 0  Warnings: 0
**/

SELECT * FROM alumnos;

/**
+--------------------+------------------+-------------------+------------------+-----------+----------+-------------+
| numero_inscripcion | anyo_inscripcion | nombre_alumno     | documento_alumno | domicilio | ciudad   | provincia   |
+--------------------+------------------+-------------------+------------------+-----------+----------+-------------+
|                  1 |             2024 | Pepe Juan         | 12345678         | Calle 1   | Ciudad 1 | Provincia 1 |
|                  3 |             2024 | Mañano Partrucio  | 87654321         | Calle 3   | Ciudad 3 | Provincia 3 |
|                  4 |             2024 | Tío Gilito        | 77777777         | Calle 4   | Ciudad 3 | Provincia 3 |
+--------------------+------------------+-------------------+------------------+-----------+----------+-------------+
**/

-- Eliminar los índices creados

DROP INDEX documento_alumno_unique_idx ON alumnos;

/**
Query OK, 0 rows affected (0,01 sec)
Records: 0  Duplicates: 0  Warnings: 0
**/

DROP INDEX ciudad_provincia_idx ON alumnos;

/**
Query OK, 0 rows affected (0,02 sec)
Records: 0  Duplicates: 0  Warnings: 0
**/

-- Verificar que los índices fueron eliminados

SHOW INDEX FROM alumnos;

/**
+---------+------------+----------+--------------+--------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table   | Non_unique | Key_name | Seq_in_index | Column_name        | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+---------+------------+----------+--------------+--------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| alumnos |          0 | PRIMARY  |            1 | numero_inscripcion | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| alumnos |          0 | PRIMARY  |            2 | anyo_inscripcion   | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
+---------+------------+----------+--------------+--------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
2 rows in set (0,00 sec)
**/
```


</div>