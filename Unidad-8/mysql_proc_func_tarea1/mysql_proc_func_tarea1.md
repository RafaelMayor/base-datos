<div align="justify">

<div align="right">
Rafael Martín Mayor.
</div>

# Tarea 1 Procedimientos y Funciones MySQL:

```sql
-- Creación de database y tablas:

CREATE DATABASE IF NOT EXISTS SimpleDB;

USE SimpleDB;

CREATE TABLE IF NOT EXISTS Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    UserName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL
);


-- Inserción datos de prueba:

INSERT INTO Users (UserName, Email) VALUES ('Juan', 'juan@example.com');
INSERT INTO Users (UserName, Email) VALUES ('María', 'maria@example.com');
INSERT INTO Users (UserName, Email) VALUES ('Pedro', 'pedro@example.com');
INSERT INTO Users (UserName, Email) VALUES ('Abdul', 'abdul@example.com');
INSERT INTO Users (UserName, Email) VALUES ('Rashid', 'rashid@example.com');
INSERT INTO Users (UserName, Email) VALUES ('Mohammed', 'mohammed@example.com');

INSERT INTO Products (ProductName, Price) VALUES ('Producto 1', 10.99);
INSERT INTO Products (ProductName, Price) VALUES ('Producto 2', 20.50);
INSERT INTO Products (ProductName, Price) VALUES ('Producto 3', 15.75);
INSERT INTO Products (ProductName, Price) VALUES ('Producto 4', 11.47);
INSERT INTO Products (ProductName, Price) VALUES ('Producto 5', 13.94);
INSERT INTO Products (ProductName, Price) VALUES ('Producto 6', 14.50);

-- Tablas resultantes:

-- Users
select * from Users;
/**
+--------+----------+----------------------+
| UserID | UserName | Email                |
+--------+----------+----------------------+
|      1 | Juan     | juan@example.com     |
|      2 | María    | maria@example.com    |
|      3 | Pedro    | pedro@example.com    |
|      4 | Abdul    | abdul@example.com    |
|      5 | Rashid   | rashid@example.com   |
|      6 | Mohammed | mohammed@example.com |
+--------+----------+----------------------+
6 rows in set (0,00 sec)
**/

-- Products:
select * from Products;
/**
+-----------+-------------+-------+
| ProductID | ProductName | Price |
+-----------+-------------+-------+
|         1 | Producto 1  | 10.99 |
|         2 | Producto 2  | 20.50 |
|         3 | Producto 3  | 15.75 |
|         4 | Producto 4  | 11.47 |
|         5 | Producto 5  | 13.94 |
|         6 | Producto 6  | 14.50 |
+-----------+-------------+-------+
6 rows in set (0,03 sec)
**/

-- Creación de procedimientos:


-- Procedimiento para insertar un nuevo usuario.

DELIMITER $$
DROP PROCEDURE IF EXISTS insertar_nuevo_usuario$$
CREATE PROCEDURE insertar_nuevo_usuario (
    IN _username VARCHAR(50),
    IN _email VARCHAR(100)
)
BEGIN
    INSERT INTO Users (UserName, Email)
    VALUES (_username, _email);
END
$$

DELIMITER ;

CALL insertar_nuevo_usuario('Ana', 'ana@example.com');
CALL insertar_nuevo_usuario('Pistacho', 'pistacho@example.com');
CALL insertar_nuevo_usuario('Juana', 'juana@example.com');

select * from Users;
/**
+--------+----------+----------------------+
| UserID | UserName | Email                |
+--------+----------+----------------------+
|      1 | Juan     | juan@example.com     |
|      2 | María    | maria@example.com    |
|      3 | Pedro    | pedro@example.com    |
|      4 | Abdul    | abdul@example.com    |
|      5 | Rashid   | rashid@example.com   |
|      6 | Mohammed | mohammed@example.com |
|      7 | Ana      | ana@example.com      |
|      8 | Pistacho | pistacho@example.com |
|      9 | Juana    | juana@example.com    |
+--------+----------+----------------------+
9 rows in set (0,00 sec)
**/

-- Procedimiento para actualizar el nombre de un usuario.

DELIMITER //
DROP PROCEDURE IF EXISTS actualizar_nombre_usuario//
CREATE PROCEDURE actualizar_nombre_usuario (
    IN _userid INT,
    IN newusername VARCHAR(50)
)
BEGIN
    UPDATE Users
    SET UserName = newusername
    WHERE UserID = _userid;
END
//

DELIMITER ;

CALL actualizar_nombre_usuario(7, 'Ana Pastrana');
CALL actualizar_nombre_usuario(8, 'Pistachito');
CALL actualizar_nombre_usuario(9, 'Pepa Juana la Hermana');


select * from Users;
/**
+--------+-----------------------+----------------------+
| UserID | UserName              | Email                |
+--------+-----------------------+----------------------+
|      1 | Juan                  | juan@example.com     |
|      2 | María                 | maria@example.com    |
|      3 | Pedro                 | pedro@example.com    |
|      4 | Abdul                 | abdul@example.com    |
|      5 | Rashid                | rashid@example.com   |
|      6 | Mohammed              | mohammed@example.com |
|      7 | Ana Pastrana          | ana@example.com      |
|      8 | Pistachito            | pistacho@example.com |
|      9 | Pepa Juana la Hermana | juana@example.com    |
+--------+-----------------------+----------------------+
9 rows in set (0,00 sec)
**/

-- Implementación de funciones para realizar cálculos o consultas:


-- Función para calcular el precio total de un conjunto de productos.

DELIMITER $$
DROP FUNCTION IF EXISTS precio_total_productos$$

CREATE FUNCTION precio_total_productos() RETURNS FLOAT DETERMINISTIC
BEGIN
DECLARE result FLOAT;
SELECT SUM(Price) AS total FROM Products INTO result;
RETURN result;
END
$$

DELIMITER ;

SELECT precio_total_productos();

/**
+--------------------------+
| precio_total_productos() |
+--------------------------+
|                    87.15 |
+--------------------------+
1 row in set (0,06 sec)
**/


-- Función para contar el número de usuarios.

DELIMITER $$
DROP FUNCTION IF EXISTS calc_num_users$$

CREATE FUNCTION calc_num_users() RETURNS INT DETERMINISTIC
BEGIN
DECLARE result INT;
SELECT COUNT(UserID) AS num_users FROM Users INTO result;
RETURN result;
END
$$

DELIMITER ;

SELECT calc_num_users();

/**
+------------------+
| calc_num_users() |
+------------------+
|                9 |
+------------------+
1 row in set (0,09 sec)
**/
```

</div>