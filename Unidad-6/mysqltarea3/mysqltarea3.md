<div align="justify">

<div align="right">
Rafael Martín Mayor.
</div>

# Tarea 3 MySQL:

### Creación de database y tablas:

```sql
CREATE DATABASE IF NOT EXISTS tarea3mysql;

USE tarea3mysql;

DROP TABLE IF EXISTS clientes;
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nombre_cliente VARCHAR(100),
    ciudad_cliente VARCHAR(100)
);

DROP TABLE IF EXISTS ordenes;
CREATE TABLE ordenes (
    id_orden INT PRIMARY KEY,
    id_cliente INT,
    fecha_orden DATE,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

DROP TABLE IF EXISTS productos;
CREATE TABLE productos (
    id_producto INT PRIMARY KEY,
    nombre_producto VARCHAR(100),
    precio_producto DECIMAL(10, 2)
);

DROP TABLE IF EXISTS detalles_ordenes;
CREATE TABLE detalles_ordenes (
    id_detalle INT PRIMARY KEY,
    id_orden INT,
    id_producto INT,
    cantidad INT,
    FOREIGN KEY (id_orden) REFERENCES ordenes(id_orden),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

INSERT INTO clientes (id_cliente, nombre_cliente, ciudad_cliente) VALUES
(1, 'Juan', 'Ciudad A'),
(2, 'María', 'Ciudad B'),
(3, 'Pedro', 'Ciudad C');

INSERT INTO ordenes (id_orden, id_cliente, fecha_orden) VALUES
(1, 1, '2024-03-01'),
(2, 2, '2024-03-02'),
(3, 3, '2024-03-03');

INSERT INTO productos (id_producto, nombre_producto, precio_producto) VALUES
(1, 'Producto A', 50.00),
(2, 'Producto B', 75.00),
(3, 'Producto C', 100.00);

INSERT INTO detalles_ordenes (id_detalle, id_orden, id_producto, cantidad) VALUES
(1, 1, 1, 2),
(2, 2, 2, 1),
(3, 3, 3, 3);
```


### Consultas MySQL:

```sql
source tarea3mysql.sql

-- Mostrar todos los clientes.
select * from clientes;
/**
+------------+----------------+----------------+
| id_cliente | nombre_cliente | ciudad_cliente |
+------------+----------------+----------------+
|          1 | Juan           | Ciudad A       |
|          2 | María          | Ciudad B       |
|          3 | Pedro          | Ciudad C       |
+------------+----------------+----------------+
**/

-- Mostrar todas las órdenes.
select * from ordenes;
/**
+----------+------------+-------------+
| id_orden | id_cliente | fecha_orden |
+----------+------------+-------------+
|        1 |          1 | 2024-03-01  |
|        2 |          2 | 2024-03-02  |
|        3 |          3 | 2024-03-03  |
+----------+------------+-------------+
**/

-- Mostrar todos los productos.
select * from productos;
/**
+-------------+-----------------+-----------------+
| id_producto | nombre_producto | precio_producto |
+-------------+-----------------+-----------------+
|           1 | Producto A      |           50.00 |
|           2 | Producto B      |           75.00 |
|           3 | Producto C      |          100.00 |
+-------------+-----------------+-----------------+
**/

-- Mostrar todos los detalles de las órdenes.
select * from detalles_ordenes;
/**
+------------+----------+-------------+----------+
| id_detalle | id_orden | id_producto | cantidad |
+------------+----------+-------------+----------+
|          1 |        1 |           1 |        2 |
|          2 |        2 |           2 |        1 |
|          3 |        3 |           3 |        3 |
+------------+----------+-------------+----------+
**/

-- Mostrar los primeros 5 clientes ordenados por nombre.
select * from clientes order by nombre_cliente limit 5;
/**
+------------+----------------+----------------+
| id_cliente | nombre_cliente | ciudad_cliente |
+------------+----------------+----------------+
|          1 | Juan           | Ciudad A       |
|          2 | María          | Ciudad B       |
|          3 | Pedro          | Ciudad C       |
+------------+----------------+----------------+
**/

-- Mostrar los productos con un precio mayor a 50.
SELECT * FROM productos WHERE precio_producto > 50;
/**
+-------------+-----------------+-----------------+
| id_producto | nombre_producto | precio_producto |
+-------------+-----------------+-----------------+
|           2 | Producto B      |           75.00 |
|           3 | Producto C      |          100.00 |
+-------------+-----------------+-----------------+
**/

-- Mostrar todas las órdenes realizadas por el cliente con ID 1.
SELECT * FROM ordenes WHERE id_cliente = 1;
/**
+----------+------------+-------------+
| id_orden | id_cliente | fecha_orden |
+----------+------------+-------------+
|        1 |          1 | 2024-03-01  |
+----------+------------+-------------+
**/

-- Mostrar los clientes cuyos nombres comienzan con la letra "A".
SELECT * FROM clientes WHERE nombre_cliente REGEXP '^A';
/**
Empty set (0,01 sec)
**/

-- Mostrar las órdenes que contienen más de 2 productos.
SELECT o.*, d.* FROM ordenes o JOIN detalles_ordenes d ON o.id_orden=d.id_orden WHERE d.cantidad > 2;
/**
+----------+------------+-------------+------------+----------+-------------+----------+
| id_orden | id_cliente | fecha_orden | id_detalle | id_orden | id_producto | cantidad |
+----------+------------+-------------+------------+----------+-------------+----------+
|        3 |          3 | 2024-03-03  |          3 |        3 |           3 |        3 |
+----------+------------+-------------+------------+----------+-------------+----------+
**/

-- Mostrar los productos ordenados por precio de forma descendente.
SELECT * FROM productos ORDER BY precio_producto DESC;
/**
+-------------+-----------------+-----------------+
| id_producto | nombre_producto | precio_producto |
+-------------+-----------------+-----------------+
|           3 | Producto C      |          100.00 |
|           2 | Producto B      |           75.00 |
|           1 | Producto A      |           50.00 |
+-------------+-----------------+-----------------+
**/

-- Seleccionar todos los clientes y sus órdenes, incluso si no tienen órdenes.
SELECT clientes.*, ordenes.* FROM clientes LEFT JOIN ordenes ON clientes.id_cliente = ordenes.id_cliente;
/**
+------------+----------------+----------------+----------+------------+-------------+
| id_cliente | nombre_cliente | ciudad_cliente | id_orden | id_cliente | fecha_orden |
+------------+----------------+----------------+----------+------------+-------------+
|          1 | Juan           | Ciudad A       |        1 |          1 | 2024-03-01  |
|          2 | María          | Ciudad B       |        2 |          2 | 2024-03-02  |
|          3 | Pedro          | Ciudad C       |        3 |          3 | 2024-03-03  |
+------------+----------------+----------------+----------+------------+-------------+
**/

-- Seleccionar todas las órdenes junto con los productos correspondientes.
SELECT ordenes.*, productos.* FROM ordenes JOIN detalles_ordenes ON ordenes.id_orden = detalles_ordenes.id_orden JOIN productos ON detalles_ordenes.id_producto = productos.id_producto;
/**
+----------+------------+-------------+-------------+-----------------+-----------------+
| id_orden | id_cliente | fecha_orden | id_producto | nombre_producto | precio_producto |
+----------+------------+-------------+-------------+-----------------+-----------------+
|        1 |          1 | 2024-03-01  |           1 | Producto A      |           50.00 |
|        2 |          2 | 2024-03-02  |           2 | Producto B      |           75.00 |
|        3 |          3 | 2024-03-03  |           3 | Producto C      |          100.00 |
+----------+------------+-------------+-------------+-----------------+-----------------+
**/

-- Mostrar el nombre de los clientes que han realizado órdenes de productos que cuestan más de 50.
SELECT DISTINCT c.nombre_cliente FROM clientes c JOIN ordenes o ON c.id_cliente = o.id_cliente JOIN detalles_ordenes d ON o.id_orden = d.id_orden JOIN productos p ON d.id_producto = p.id_producto WHERE p.precio_producto > 50;
/**
+----------------+
| nombre_cliente |
+----------------+
| María          |
| Pedro          |
+----------------+
**/

-- Obtener el nombre de los productos que no se han ordenado aún.
SELECT p.nombre_producto FROM productos p LEFT JOIN detalles_ordenes d ON p.id_producto = d.id_producto WHERE d.id_orden IS NULL;
/**
Empty set (0,00 sec)
**/

-- Mostrar el nombre del cliente, el producto y la cantidad para todas las órdenes.
SELECT c.nombre_cliente, p.nombre_producto, d.cantidad FROM clientes c JOIN ordenes o ON c.id_cliente = o.id_cliente JOIN detalles_ordenes d ON o.id_orden = d.id_orden JOIN productos p ON d.id_producto = p.id_producto;
/**
+----------------+-----------------+----------+
| nombre_cliente | nombre_producto | cantidad |
+----------------+-----------------+----------+
| Juan           | Producto A      |        2 |
| María          | Producto B      |        1 |
| Pedro          | Producto C      |        3 |
+----------------+-----------------+----------+
**/

-- Obtener el nombre de los productos junto con los nombres de los clientes que han realizado órdenes de esos productos.
SELECT p.nombre_producto, c.nombre_cliente FROM productos p JOIN detalles_ordenes d ON p.id_producto = d.id_producto JOIN ordenes o ON d.id_orden = o.id_orden JOIN clientes c ON o.id_cliente = c.id_cliente;
/**
+-----------------+----------------+
| nombre_producto | nombre_cliente |
+-----------------+----------------+
| Producto A      | Juan           |
| Producto B      | María          |
| Producto C      | Pedro          |
+-----------------+----------------+
**/

-- Mostrar todas las órdenes con sus clientes y productos, incluso si no hay órdenes.
SELECT o.*, c.nombre_cliente, p.nombre_producto FROM ordenes o LEFT JOIN clientes c ON o.id_cliente = c.id_cliente LEFT JOIN detalles_ordenes d ON o.id_orden = d.id_orden LEFT JOIN productos p ON d.id_producto = p.id_producto;
/**
+----------+------------+-------------+----------------+-----------------+
| id_orden | id_cliente | fecha_orden | nombre_cliente | nombre_producto |
+----------+------------+-------------+----------------+-----------------+
|        1 |          1 | 2024-03-01  | Juan           | Producto A      |
|        2 |          2 | 2024-03-02  | María          | Producto B      |
|        3 |          3 | 2024-03-03  | Pedro          | Producto C      |
+----------+------------+-------------+----------------+-----------------+
**/

-- Obtener el nombre de los clientes junto con el número total de órdenes que han realizado.
SELECT clientes.nombre_cliente, COUNT(ordenes.id_orden) AS total_ordenes FROM clientes LEFT JOIN ordenes ON clientes.id_cliente = ordenes.id_cliente GROUP BY clientes.id_cliente;
/**
+----------------+---------------+
| nombre_cliente | total_ordenes |
+----------------+---------------+
| Juan           |             1 |
| María          |             1 |
| Pedro          |             1 |
+----------------+---------------+
**/

-- Mostrar todas las órdenes junto con el nombre del cliente y el nombre del producto.
SELECT o.*, c.nombre_cliente, p.nombre_producto FROM ordenes o JOIN clientes c ON o.id_cliente = c.id_cliente JOIN detalles_ordenes d ON o.id_orden = d.id_orden JOIN productos p ON d.id_producto = p.id_producto;
/**
+----------+------------+-------------+----------------+-----------------+
| id_orden | id_cliente | fecha_orden | nombre_cliente | nombre_producto |
+----------+------------+-------------+----------------+-----------------+
|        1 |          1 | 2024-03-01  | Juan           | Producto A      |
|        2 |          2 | 2024-03-02  | María          | Producto B      |
|        3 |          3 | 2024-03-03  | Pedro          | Producto C      |
+----------+------------+-------------+----------------+-----------------+
**/

-- Mostrar todas las órdenes con sus productos y clientes, incluso si no hay información de cliente.
SELECT ordenes.*, clientes.nombre_cliente, productos.nombre_producto FROM ordenes LEFT JOIN clientes ON ordenes.id_cliente = clientes.id_cliente JOIN detalles_ordenes ON ordenes.id_orden = detalles_ordenes.id_orden JOIN productos ON detalles_ordenes.id_producto = productos.id_producto;
/**
+----------+------------+-------------+----------------+-----------------+
| id_orden | id_cliente | fecha_orden | nombre_cliente | nombre_producto |
+----------+------------+-------------+----------------+-----------------+
|        1 |          1 | 2024-03-01  | Juan           | Producto A      |
|        2 |          2 | 2024-03-02  | María          | Producto B      |
|        3 |          3 | 2024-03-03  | Pedro          | Producto C      |
+----------+------------+-------------+----------------+-----------------+
**/

-- Obtener el nombre de los productos junto con los nombres de los clientes que han realizado órdenes de esos productos, incluyendo los productos que no han sido ordenados.
SELECT productos.nombre_producto, clientes.nombre_cliente FROM productos LEFT JOIN detalles_ordenes ON productos.id_producto = detalles_ordenes.id_producto LEFT JOIN ordenes ON ordenes.id_orden = detalles_ordenes.id_orden LEFT JOIN clientes ON ordenes.id_cliente = clientes.id_cliente;
/**
+-----------------+----------------+
| nombre_producto | nombre_cliente |
+-----------------+----------------+
| Producto A      | Juan           |
| Producto B      | María          |
| Producto C      | Pedro          |
+-----------------+----------------+
**/

-- Mostrar todas las órdenes junto con el nombre del cliente y el nombre del producto, incluyendo las órdenes sin productos.
SELECT ordenes.*, clientes.nombre_cliente, productos.nombre_producto FROM ordenes LEFT JOIN clientes ON ordenes.id_cliente = clientes.id_cliente LEFT JOIN detalles_ordenes ON ordenes.id_orden = detalles_ordenes.id_orden LEFT JOIN productos ON detalles_ordenes.id_producto = productos.id_producto;
/**
+----------+------------+-------------+----------------+-----------------+
| id_orden | id_cliente | fecha_orden | nombre_cliente | nombre_producto |
+----------+------------+-------------+----------------+-----------------+
|        1 |          1 | 2024-03-01  | Juan           | Producto A      |
|        2 |          2 | 2024-03-02  | María          | Producto B      |
|        3 |          3 | 2024-03-03  | Pedro          | Producto C      |
+----------+------------+-------------+----------------+-----------------+
**/

-- Obtener el nombre de los clientes junto con el número total de órdenes que han realizado, incluyendo los clientes que no han realizado órdenes.
SELECT clientes.nombre_cliente, COUNT(ordenes.id_orden) AS total_ordenes FROM clientes LEFT JOIN ordenes ON clientes.id_cliente = ordenes.id_cliente GROUP BY clientes.id_cliente;
/**
+----------------+---------------+
| nombre_cliente | total_ordenes |
+----------------+---------------+
| Juan           |             1 |
| María          |             1 |
| Pedro          |             1 |
+----------------+---------------+
**/

-- Mostrar todas las órdenes con sus clientes y productos, incluyendo las órdenes y productos que no tienen información.
SELECT ordenes.*, clientes.nombre_cliente, productos.nombre_producto FROM ordenes LEFT JOIN clientes ON ordenes.id_cliente = clientes.id_cliente LEFT JOIN detalles_ordenes ON ordenes.id_orden = detalles_ordenes.id_orden LEFT JOIN productos ON detalles_ordenes.id_producto = productos.id_producto;
/**
+----------+------------+-------------+----------------+-----------------+
| id_orden | id_cliente | fecha_orden | nombre_cliente | nombre_producto |
+----------+------------+-------------+----------------+-----------------+
|        1 |          1 | 2024-03-01  | Juan           | Producto A      |
|        2 |          2 | 2024-03-02  | María          | Producto B      |
|        3 |          3 | 2024-03-03  | Pedro          | Producto C      |
+----------+------------+-------------+----------------+-----------------+
**/

-- Realizar un inner join entre clientes y órdenes.
select c.*, o.* from clientes c inner join ordenes o on c.id_cliente = o.id_cliente;
/**
+------------+----------------+----------------+----------+------------+-------------+
| id_cliente | nombre_cliente | ciudad_cliente | id_orden | id_cliente | fecha_orden |
+------------+----------------+----------------+----------+------------+-------------+
|          1 | Juan           | Ciudad A       |        1 |          1 | 2024-03-01  |
|          2 | María          | Ciudad B       |        2 |          2 | 2024-03-02  |
|          3 | Pedro          | Ciudad C       |        3 |          3 | 2024-03-03  |
+------------+----------------+----------------+----------+------------+-------------+
**/

-- Realizar un left join entre órdenes y detalles de órdenes.
select o.*, d.* from ordenes o left join detalles_ordenes d on o.id_orden = d.id_orden;
/**
+------------+----------------+----------------+----------+------------+-------------+
| id_cliente | nombre_cliente | ciudad_cliente | id_orden | id_cliente | fecha_orden |
+------------+----------------+----------------+----------+------------+-------------+
|          1 | Juan           | Ciudad A       |        1 |          1 | 2024-03-01  |
|          2 | María          | Ciudad B       |        2 |          2 | 2024-03-02  |
|          3 | Pedro          | Ciudad C       |        3 |          3 | 2024-03-03  |
+------------+----------------+----------------+----------+------------+-------------+
**/

-- Realizar un right join entre productos y detalles de órdenes.
select p.*, d.* from productos p right join detalles_ordenes d on p.id_producto = d.id_producto;
/**
+-------------+-----------------+-----------------+------------+----------+-------------+----------+
| id_producto | nombre_producto | precio_producto | id_detalle | id_orden | id_producto | cantidad |
+-------------+-----------------+-----------------+------------+----------+-------------+----------+
|           1 | Producto A      |           50.00 |          1 |        1 |           1 |        2 |
|           2 | Producto B      |           75.00 |          2 |        2 |           2 |        1 |
|           3 | Producto C      |          100.00 |          3 |        3 |           3 |        3 |
+-------------+-----------------+-----------------+------------+----------+-------------+----------+
**/

-- Realizar un full join entre clientes y órdenes.
SELECT * FROM clientes LEFT JOIN ordenes ON clientes.id_cliente = ordenes.id_cliente UNION ALL SELECT * FROM clientes RIGHT JOIN ordenes ON clientes.id_cliente = ordenes.id_cliente;
/**
+------------+----------------+----------------+----------+------------+-------------+
| id_cliente | nombre_cliente | ciudad_cliente | id_orden | id_cliente | fecha_orden |
+------------+----------------+----------------+----------+------------+-------------+
|          1 | Juan           | Ciudad A       |        1 |          1 | 2024-03-01  |
|          2 | María          | Ciudad B       |        2 |          2 | 2024-03-02  |
|          3 | Pedro          | Ciudad C       |        3 |          3 | 2024-03-03  |
|          1 | Juan           | Ciudad A       |        1 |          1 | 2024-03-01  |
|          2 | María          | Ciudad B       |        2 |          2 | 2024-03-02  |
|          3 | Pedro          | Ciudad C       |        3 |          3 | 2024-03-03  |
+------------+----------------+----------------+----------+------------+-------------+
**/

-- Realizar un full join entre órdenes y detalles de órdenes.
SELECT * FROM ordenes LEFT JOIN detalles_ordenes ON ordenes.id_orden = detalles_ordenes.id_orden UNION ALL SELECT * FROM ordenes RIGHT JOIN detalles_ordenes ON ordenes.id_orden = detalles_ordenes.id_orden;
/**
+----------+------------+-------------+------------+----------+-------------+----------+
| id_orden | id_cliente | fecha_orden | id_detalle | id_orden | id_producto | cantidad |
+----------+------------+-------------+------------+----------+-------------+----------+
|        1 |          1 | 2024-03-01  |          1 |        1 |           1 |        2 |
|        2 |          2 | 2024-03-02  |          2 |        2 |           2 |        1 |
|        3 |          3 | 2024-03-03  |          3 |        3 |           3 |        3 |
|        1 |          1 | 2024-03-01  |          1 |        1 |           1 |        2 |
|        2 |          2 | 2024-03-02  |          2 |        2 |           2 |        1 |
|        3 |          3 | 2024-03-03  |          3 |        3 |           3 |        3 |
+----------+------------+-------------+------------+----------+-------------+----------+
**/

-- Realizar un full join entre productos y detalles de órdenes.
SELECT * FROM productos LEFT JOIN detalles_ordenes ON productos.id_producto = detalles_ordenes.id_producto UNION ALL SELECT * FROM productos RIGHT JOIN detalles_ordenes ON productos.id_producto = detalles_ordenes.id_producto;
/**
+-------------+-----------------+-----------------+------------+----------+-------------+----------+
| id_producto | nombre_producto | precio_producto | id_detalle | id_orden | id_producto | cantidad |
+-------------+-----------------+-----------------+------------+----------+-------------+----------+
|           1 | Producto A      |           50.00 |          1 |        1 |           1 |        2 |
|           2 | Producto B      |           75.00 |          2 |        2 |           2 |        1 |
|           3 | Producto C      |          100.00 |          3 |        3 |           3 |        3 |
|           1 | Producto A      |           50.00 |          1 |        1 |           1 |        2 |
|           2 | Producto B      |           75.00 |          2 |        2 |           2 |        1 |
|           3 | Producto C      |          100.00 |          3 |        3 |           3 |        3 |
+-------------+-----------------+-----------------+------------+----------+-------------+----------+
**/


```


</div>