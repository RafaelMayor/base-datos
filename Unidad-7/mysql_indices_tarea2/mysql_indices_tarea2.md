<div align="justify">

<div align="right">
Rafael Martín Mayor.
</div>

# Tarea 2 Índices MySQL:

### Creación de database y tablas:

```sql
CREATE DATABASE IF NOT EXISTS cliente_db;

USE cliente_db;

CREATE TABLE IF NOT EXISTS clientes (
    documento char (8) not null,
    nombre varchar(30) not null,
    domicilio varchar(30),
    ciudad varchar(20),
    provincia varchar (20),
    telefono varchar(11)
);

```

### Modificado de la database y tablas:

```sql
-- Elimine la tabla "cliente" si existe. 

DROP TABLE IF EXISTS clientes;

/**
Query OK, 0 rows affected (0,04 sec)
**/

-- Cree la tabla sin clave primaria e incluye a posteriori esta. 

CREATE TABLE clientes (
    documento char (8) not null,
    nombre varchar(30) not null,
    domicilio varchar(30),
    ciudad varchar(20),
    provincia varchar (20),
    telefono varchar(11)
);

/**
Query OK, 0 rows affected (0,04 sec)
**/

ALTER TABLE clientes ADD id_cliente INT PRIMARY KEY AUTO_INCREMENT;

/**
Query OK, 0 rows affected (0,04 sec)
Records: 0  Duplicates: 0  Warnings: 0
**/

describe clientes;

/**
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| documento  | char(8)     | NO   |     | NULL    |                |
| nombre     | varchar(30) | NO   |     | NULL    |                |
| domicilio  | varchar(30) | YES  |     | NULL    |                |
| ciudad     | varchar(20) | YES  |     | NULL    |                |
| provincia  | varchar(20) | YES  |     | NULL    |                |
| telefono   | varchar(11) | YES  |     | NULL    |                |
| id_cliente | int         | NO   | PRI | NULL    | auto_increment |
+------------+-------------+------+-----+---------+----------------+
7 rows in set (0,02 sec)
**/

-- Un índice único por el campo "documento" y un índice común por ciudad y provincia. Justifica el tipo de indice en un comentario_. 

CREATE UNIQUE INDEX documento_unique_idx ON clientes (documento); -- Índice único para el campo documento

/**
Query OK, 0 rows affected (0,04 sec)
Records: 0  Duplicates: 0  Warnings: 0
**/

CREATE INDEX ciudad_provincia_idx ON clientes (ciudad, provincia); -- Índice común para ciudad y provincia (no es único, ya que puede haber múltiples alumnos en la misma ciudad y provincia)

/**
Query OK, 0 rows affected (0,03 sec)
Records: 0  Duplicates: 0  Warnings: 0
**/

-- Vea los índices de la tabla.

SHOW INDEX FROM clientes;

/**
+----------+------------+----------------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table    | Non_unique | Key_name             | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+----------+------------+----------------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| clientes |          0 | PRIMARY              |            1 | id_cliente  | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| clientes |          0 | documento_unique_idx |            1 | documento   | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| clientes |          1 | ciudad_provincia_idx |            1 | ciudad      | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| clientes |          1 | ciudad_provincia_idx |            2 | provincia   | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
+----------+------------+----------------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
4 rows in set (0,02 sec)
**/

-- Agregue un índice único por el campo "telefono".

CREATE UNIQUE INDEX telefono_unique_idx ON clientes (telefono);

/**
Query OK, 0 rows affected (0,03 sec)
Records: 0  Duplicates: 0  Warnings: 0
**/

SHOW INDEX FROM clientes;

/**
+----------+------------+----------------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table    | Non_unique | Key_name             | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+----------+------------+----------------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| clientes |          0 | PRIMARY              |            1 | id_cliente  | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| clientes |          0 | documento_unique_idx |            1 | documento   | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| clientes |          0 | telefono_unique_idx  |            1 | telefono    | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| clientes |          1 | ciudad_provincia_idx |            1 | ciudad      | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| clientes |          1 | ciudad_provincia_idx |            2 | provincia   | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
+----------+------------+----------------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
5 rows in set (0,01 sec)
**/

-- Elimina los índices.

ALTER TABLE clientes DROP INDEX documento_unique_idx, DROP INDEX ciudad_provincia_idx, DROP INDEX telefono_unique_idx;

/**
Query OK, 0 rows affected (0,02 sec)
Records: 0  Duplicates: 0  Warnings: 0
**/

SHOW INDEX FROM clientes;

/**
+----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table    | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| clientes |          0 | PRIMARY  |            1 | id_cliente  | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
+----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
1 row in set (0,00 sec)
**/

```
