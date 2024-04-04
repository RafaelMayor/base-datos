<div align="justify">

<div align="right">
Rafael Martín Mayor.
</div>

# Tarea 3 Índices MySQL:

```sql
-- Creación de database y tablas:

CREATE DATABASE IF NOT EXISTS Base_Indices;

USE Base_Indices;

CREATE TABLE IF NOT EXISTS MOVIMIENTO (
    Identificador int PRIMARY KEY AUTO_INCREMENT,
    Articulo varchar(50) not null,
    Fecha date not null,
    Cantidad int not null
);

-- Aplica la sentencia adecuada para visualizar los índices que hay en la tabla.

SHOW INDEX FROM MOVIMIENTO;

/**
+------------+------------+----------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table      | Non_unique | Key_name | Seq_in_index | Column_name   | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+------------+------------+----------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| MOVIMIENTO |          0 | PRIMARY  |            1 | PK_MOVIMIENTO | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
+------------+------------+----------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
1 row in set (0,02 sec)

La clave primaria es un índice único, es el identificador principal de la tabla.
**/

-- Datos de prueba:

CREATE TABLE NumerosUnicos (
Numero INT AUTO_INCREMENT PRIMARY KEY
);

INSERT INTO NumerosUnicos (Numero)
SELECT NULL FROM INFORMATION_SCHEMA.COLUMNS LIMIT 5000;

INSERT INTO MOVIMIENTO (Identificador, Articulo, Fecha, Cantidad)
SELECT 
    n.Numero,
    CONCAT('Producto', n.Numero),
    DATE_ADD('2012-01-01', INTERVAL FLOOR(RAND() * 120) DAY),
    FLOOR(RAND() * 1000000) + 1
FROM 
    NumerosUnicos n;

    DROP TABLE NumerosUnicos;

/**
mysql> CREATE TABLE NumerosUnicos (
    -> Numero INT AUTO_INCREMENT PRIMARY KEY
    -> );
mero)
SELECT NULL FROM INFORMATION_SCHEMA.COLUMNS LIMIT 5000;

INSERT INTO MOVIMIENTO (Identificador, Articulo, Fecha, Cantidad)
SELECT 
    n.Numero,
    CONCAT('Producto', n.Numero),
    DATE_ADD('2012-01-01', INTERVAL FLOOR(RAND() * 120) DAY),
    FLOOR(RAND() * 1000000) + 1
FROM 
    NumerosUnicQuery OK, 0 rows affected (0,04 sec)

mysql> 
mysql> INSERT INTO NumerosUnicos (Numero)
    -> SELECT NULL FROM INFORMATION_SCHEMA.COLUMNS LIMIT 5000;
os n;

    DROP TABLE NumerosUnicos;Query OK, 3562 rows affected (0,14 sec)
Records: 3562  Duplicates: 0  Warnings: 0

mysql> 
mysql> INSERT INTO MOVIMIENTO (Identificador, Articulo, Fecha, Cantidad)
    -> SELECT 
    ->     n.Numero,
    ->     CONCAT('Producto', n.Numero),
    ->     DATE_ADD('2012-01-01', INTERVAL FLOOR(RAND() * 120) DAY),
    ->     FLOOR(RAND() * 1000000) + 1
    -> FROM 
    ->     NumerosUnicos n;
Query OK, 3562 rows affected (0,12 sec)
Records: 3562  Duplicates: 0  Warnings: 0
**/

-- Hacer count() sobre la tabla MOVIMIENTO;

select count(*) from MOVIMIENTO;

/**
+----------+
| count(*) |
+----------+
|     3562 |
+----------+
1 row in set (0,01 sec)
**/

-- Creación de un duplicado de la tabla MOVIMIENTO

create table MOVIMIENTO_BIS select * from MOVIMIENTO;

/**
Query OK, 3562 rows affected (0,13 sec)
Records: 3562  Duplicates: 0  Warnings: 0
**/

-- Con la cláusula DESCRIBE observa cuál es la situación de la tabla clonada, ¿Qué le pasa al índice y a la propiedad AUTO_INCREMENT?


DESCRIBE MOVIMIENTO;

/**
+---------------+-------------+------+-----+---------+----------------+
| Field         | Type        | Null | Key | Default | Extra          |
+---------------+-------------+------+-----+---------+----------------+
| Identificador | int         | NO   | PRI | NULL    | auto_increment |
| Articulo      | varchar(50) | NO   |     | NULL    |                |
| Fecha         | date        | NO   |     | NULL    |                |
| Cantidad      | int         | NO   |     | NULL    |                |
+---------------+-------------+------+-----+---------+----------------+
**/

DESCRIBE MOVIMIENTO_BIS;

/**
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| Identificador | int         | NO   |     | 0       |       |
| Articulo      | varchar(50) | NO   |     | NULL    |       |
| Fecha         | date        | NO   |     | NULL    |       |
| Cantidad      | int         | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
4 rows in set (0,01 sec)
**/


-- Tanto el índice (PRIMARY KEY) como la propiedad AUTO_INCREMENT desaparecen (no se copia) y en vez de ser default NULL es default 0.


-- Utilizando EXPLAIN observa el plan de ejecución de la consulta que devuelve toda la información de los movimientos con identificador=3. Tanto en la tabla MOVIMIENTOS como en la tabla MOVIMIENTOS_bis. Escribe tus conclusiones al respecto.

EXPLAIN select * from MOVIMIENTO, MOVIMIENTO_BIS where MOVIMIENTO.Identificador=3 or MOVIMIENTO_BIS.Identificador=3;

/**
+----+-------------+----------------+------------+------+---------------+------+---------+------+------+----------+--------------------------------------------+
| id | select_type | table          | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra                                      |
+----+-------------+----------------+------------+------+---------------+------+---------+------+------+----------+--------------------------------------------+
|  1 | SIMPLE      | MOVIMIENTO     | NULL       | ALL  | PRIMARY       | NULL | NULL    | NULL | 3562 |   100.00 | NULL                                       |
|  1 | SIMPLE      | MOVIMIENTO_BIS | NULL       | ALL  | NULL          | NULL | NULL    | NULL | 3562 |   100.00 | Using where; Using join buffer (hash join) |
+----+-------------+----------------+------------+------+---------------+------+---------+------+------+----------+--------------------------------------------+
2 rows in set, 1 warning (0,00 sec)
**/

-- Me da un warning en la tabla duplicada porque no hay primary key.

-- Supongamos que las consultas de rango que se van a hacer en nuestra tabla son frecuentes y además no por el identificador, sino por la fecha. Este es motivo suficiente para que sea la fecha un índice de tabla y así mejorar el tiempo de respuesta de nuestras consultas. En la tabla MOVIMIENTO_BIS creamos un índice para la fecha (IX_FECHA_BIS) y otro índice para el identificador (IX_IDENTIFICADOR).

CREATE INDEX IX_FECHA_BIS ON MOVIMIENTO_BIS (Fecha);

/**
Query OK, 0 rows affected (0,16 sec)
Records: 0  Duplicates: 0  Warnings: 0
**/

CREATE UNIQUE INDEX IX_IDENTIFICADOR ON MOVIMIENTO_BIS (Identificador);

/**
Query OK, 0 rows affected (0,16 sec)
Records: 0  Duplicates: 0  Warnings: 0
**/


-- Analiza el plan de ejecución de las siguientes consultas y observa la diferencia:

-- Consulta 1

EXPLAIN select * from MOVIMIENTO_BIS where identificador=3;

/**
+----+-------------+----------------+------------+-------+------------------+------------------+---------+-------+------+----------+-------+
| id | select_type | table          | partitions | type  | possible_keys    | key              | key_len | ref   | rows | filtered | Extra |
+----+-------------+----------------+------------+-------+------------------+------------------+---------+-------+------+----------+-------+
|  1 | SIMPLE      | MOVIMIENTO_BIS | NULL       | const | IX_IDENTIFICADOR | IX_IDENTIFICADOR | 4       | const |    1 |   100.00 | NULL  |
+----+-------------+----------------+------------+-------+------------------+------------------+---------+-------+------+----------+-------+
1 row in set, 1 warning (0,02 sec)
**/

-- Consulta 2

EXPLAIN select identificador from MOVIMIENTO_BIS where identificador=3;

/**
+----+-------------+----------------+------------+-------+------------------+------------------+---------+-------+------+----------+-------------+
| id | select_type | table          | partitions | type  | possible_keys    | key              | key_len | ref   | rows | filtered | Extra       |
+----+-------------+----------------+------------+-------+------------------+------------------+---------+-------+------+----------+-------------+
|  1 | SIMPLE      | MOVIMIENTO_BIS | NULL       | const | IX_IDENTIFICADOR | IX_IDENTIFICADOR | 4       | const |    1 |   100.00 | Using index |
+----+-------------+----------------+------------+-------+------------------+------------------+---------+-------+------+----------+-------------+
1 row in set, 1 warning (0,00 sec)
**/

/**
Fíjate en que en la consulta 1 pedimos todos los campos. ¿A través de que indice se busca?

IX_IDENTIFICADOR

¿Por qué crees que lo hace así?

Porque el índice IX_IDENTIFICADOR apunta a la primary key de la tabla y hace que vaya más rápido así.

En la consulta 2 solo pedimos el identificador. ¿A través de que índice busca?

IX_IDENTIFICADOR

¿Por qué crees que lo hace así?

Porque el índice IX_IDENTIFICADOR apunta a la primary key de la tabla y hace que vaya más rápido así.

Analiza la ejecución.

La segunda consulta va más rápida que la primera porque le pedimos menos cosas.
**/


-- Analiza el plan de ejecución de las siguientes consultas y observa la diferencia:

-- Consulta 1

EXPLAIN SELECT fecha FROM MOVIMIENTO WHERE fecha BETWEEN '01/01/2012' and '01/03/2012';

/**
+----+-------------+------------+------------+------+---------------+------+---------+------+------+----------+-------------+
| id | select_type | table      | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
+----+-------------+------------+------------+------+---------------+------+---------+------+------+----------+-------------+
|  1 | SIMPLE      | MOVIMIENTO | NULL       | ALL  | NULL          | NULL | NULL    | NULL | 3562 |    11.11 | Using where |
+----+-------------+------------+------------+------+---------------+------+---------+------+------+----------+-------------+
1 row in set, 1 warning (0,00 sec)
**/

-- Consulta 2

EXPLAIN SELECT * FROM MOVIMIENTO WHERE fecha BETWEEN '01/01/2012' and '01/03/2012';

/**
+----+-------------+------------+------------+------+---------------+------+---------+------+------+----------+-------------+
| id | select_type | table      | partitions | type | possible_keys | key  | key_len | ref  | rows | filtered | Extra       |
+----+-------------+------------+------------+------+---------------+------+---------+------+------+----------+-------------+
|  1 | SIMPLE      | MOVIMIENTO | NULL       | ALL  | NULL          | NULL | NULL    | NULL | 3562 |    11.11 | Using where |
+----+-------------+------------+------------+------+---------------+------+---------+------+------+----------+-------------+
1 row in set, 1 warning (0,01 sec)
**/


/**
Fijate que en la consulta 2 pedimos todos los campos. ¿A través de que índice busca?

Ninguno.

¿Por qué crees que lo hace así?

Porque la consulta está mal. Las fechas no van entre comillas.

En la consulta 1 solo pedimos la fecha. ¿A través de que índice busca?

Ninguno.

¿Por qué crees que lo hace así?

Porque la consulta está mal. Las fechas no van entre comillas.

Analiza la ejecución.

La primera consulta va más rápida que la segunda porque le pedimos menos cosas.

Si ejecutamos las consultas sin el EXPLAIN, nos dará un Empty set y más de 7000 warnings:

mysql> SELECT fecha FROM MOVIMIENTO WHERE fecha BETWEEN '01/01/2012' and '01/03/2012';
Empty set, 7092 warnings (0,01 sec)

mysql> SELECT * FROM MOVIMIENTO WHERE Fecha BETWEEN '01/01/2012' and '01/03/2012';
Empty set, 7092 warnings (0,00 sec)

Si hacemos un SHOW WARNINGS; a continuación justo después de ejecutar las consultas nos enseñará los warnings y saldrá Incorrect date value:

| Warning | 1292 | Incorrect date value: '01/01/2012' for column 'Fecha' at row 1 |

**/


-- Vamos a crear un índice por fecha (IX_FECHA) en la tabla MOVIMIENTO, puesto que no lo tenía, en este caso la tabla ya tenía un indice, la clave primaria.

CREATE INDEX IX_FECHA ON MOVIMIENTO (Fecha);

/**
Query OK, 0 rows affected (0,21 sec)
Records: 0  Duplicates: 0  Warnings: 0
**/

-- Visualiza los indices de las tablas MOVIMIENTO y MOVIMIENTO_BIS.

SHOW INDEX FROM MOVIMIENTO;

/**
+------------+------------+----------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table      | Non_unique | Key_name | Seq_in_index | Column_name   | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+------------+------------+----------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| MOVIMIENTO |          0 | PRIMARY  |            1 | Identificador | A         |        3546 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| MOVIMIENTO |          1 | IX_FECHA |            1 | Fecha         | A         |         120 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
+------------+------------+----------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
2 rows in set (0,01 sec)
**/

SHOW INDEX FROM MOVIMIENTO_BIS;

/**
+----------------+------------+------------------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table          | Non_unique | Key_name         | Seq_in_index | Column_name   | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+----------------+------------+------------------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| MOVIMIENTO_BIS |          0 | IX_IDENTIFICADOR |            1 | Identificador | A         |        3546 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| MOVIMIENTO_BIS |          1 | IX_FECHA_BIS     |            1 | Fecha         | A         |         120 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
+----------------+------------+------------------+--------------+---------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
2 rows in set (0,01 sec)
**/

-- Analiza el plan de ejecución de las siguientes consultas y observa la diferencia:

-- Consulta 1:

EXPLAIN SELECT fecha FROM MOVIMIENTO WHERE fecha BETWEEN 01/01/2012 AND 01/03/2012;

/**
+----+-------------+------------+------------+------+---------------+----------+---------+-------+------+----------+-------------+
| id | select_type | table      | partitions | type | possible_keys | key      | key_len | ref   | rows | filtered | Extra       |
+----+-------------+------------+------------+------+---------------+----------+---------+-------+------+----------+-------------+
|  1 | SIMPLE      | MOVIMIENTO | NULL       | ref  | IX_FECHA      | IX_FECHA | 3       | const |    1 |   100.00 | Using index |
+----+-------------+------------+------------+------+---------------+----------+---------+-------+------+----------+-------------+
1 row in set, 1 warning (0,06 sec)
**/

-- Consulta 2:

EXPLAIN SELECT * FROM MOVIMIENTO WHERE fecha BETWEEN 01/01/2012 AND 01/03/2012;

/**
+----+-------------+------------+------------+------+---------------+----------+---------+-------+------+----------+-------+
| id | select_type | table      | partitions | type | possible_keys | key      | key_len | ref   | rows | filtered | Extra |
+----+-------------+------------+------------+------+---------------+----------+---------+-------+------+----------+-------+
|  1 | SIMPLE      | MOVIMIENTO | NULL       | ref  | IX_FECHA      | IX_FECHA | 3       | const |    1 |   100.00 | NULL  |
+----+-------------+------------+------------+------+---------------+----------+---------+-------+------+----------+-------+
1 row in set, 1 warning (0,00 sec)
**/

-- Consulta 3:

EXPLAIN SELECT fecha FROM MOVIMIENTO_BIS WHERE fecha BETWEEN 01/01/2012 AND 01/03/2012;

/**
+----+-------------+----------------+------------+------+---------------+--------------+---------+-------+------+----------+-------------+
| id | select_type | table          | partitions | type | possible_keys | key          | key_len | ref   | rows | filtered | Extra       |
+----+-------------+----------------+------------+------+---------------+--------------+---------+-------+------+----------+-------------+
|  1 | SIMPLE      | MOVIMIENTO_BIS | NULL       | ref  | IX_FECHA_BIS  | IX_FECHA_BIS | 3       | const |    1 |   100.00 | Using index |
+----+-------------+----------------+------------+------+---------------+--------------+---------+-------+------+----------+-------------+
**/

-- Consulta 4:

EXPLAIN SELECT * FROM MOVIMIENTO_BIS WHERE fecha BETWEEN 01/01/2012 AND 01/03/2012;

/**
+----+-------------+----------------+------------+------+---------------+--------------+---------+-------+------+----------+-------+
| id | select_type | table          | partitions | type | possible_keys | key          | key_len | ref   | rows | filtered | Extra |
+----+-------------+----------------+------------+------+---------------+--------------+---------+-------+------+----------+-------+
|  1 | SIMPLE      | MOVIMIENTO_BIS | NULL       | ref  | IX_FECHA_BIS  | IX_FECHA_BIS | 3       | const |    1 |   100.00 | NULL  |
+----+-------------+----------------+------------+------+---------------+--------------+---------+-------+------+----------+-------+
1 row in set, 1 warning (0,00 sec)

En todas las consultas se busca a través del índice que creamos para la columna Fecha, es así porque es la manera más directa y rápida para MySQL de encontrar lo que queremos.

En todos los explain tenemos un warning, en el que MySQL nos explica cómo deberíamos realizar la consulta, como por ejemplo:

mysql> SHOW WARNINGS;
+-------+------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Level | Code | Message                                                                                                                                                              |
+-------+------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Note  | 1003 | /* select#1 */ select `Base_Indices`.`MOVIMIENTO`.`Fecha` AS `fecha` from `Base_Indices`.`MOVIMIENTO` where (`Base_Indices`.`MOVIMIENTO`.`Fecha` = DATE'0000-00-00') |
+-------+------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+

**/



```

</div>