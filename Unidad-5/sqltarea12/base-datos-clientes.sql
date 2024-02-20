-- Rafael Martín Mayor.

-- Create tables:

CREATE TABLE cliente (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT,
    apellido1 TEXT,
    apellido2 TEXT,
    ciudad TEXT,
    categoria INTEGER
);

CREATE TABLE comercial (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT,
    apellido1 TEXT,
    apellido2 TEXT,
    categoria REAL
);

CREATE TABLE pedido (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    total REAL,
    fecha TEXT,
    id_cliente INTEGER,
    id_comercial INTEGER,
    FOREIGN KEY(id_cliente) REFERENCES cliente(id),
    FOREIGN KEY(id_comercial) REFERENCES comercial(id)
);


-- Consultas sobre una tabla



-- Devuelve un listado con todos los pedidos que se han realizado. Los pedidos deben estar ordenados por la fecha de realización, mostrando en primer lugar los pedidos más recientes.
SELECT * FROM pedido
ORDER BY fecha DESC;
/**
┌────┬─────────┬────────────┬────────────┬──────────────┐
│ id │  total  │   fecha    │ id_cliente │ id_comercial │
├────┼─────────┼────────────┼────────────┼──────────────┤
│ 15 │ 370.85  │ 2019-03-11 │ 1          │ 5            │
│ 16 │ 2389.23 │ 2019-03-11 │ 1          │ 5            │
│ 13 │ 545.75  │ 2019-01-25 │ 6          │ 1            │
│ 8  │ 1983.43 │ 2017-10-10 │ 4          │ 6            │
│ 1  │ 150.5   │ 2017-10-05 │ 5          │ 2            │
│ 3  │ 65.26   │ 2017-10-05 │ 2          │ 1            │
│ 5  │ 948.5   │ 2017-09-10 │ 5          │ 2            │
│ 12 │ 3045.6  │ 2017-04-25 │ 2          │ 1            │
│ 14 │ 145.82  │ 2017-02-02 │ 6          │ 1            │
│ 9  │ 2480.4  │ 2016-10-10 │ 8          │ 3            │
│ 2  │ 270.65  │ 2016-09-10 │ 1          │ 5            │
│ 4  │ 110.5   │ 2016-08-17 │ 8          │ 3            │
│ 11 │ 75.29   │ 2016-08-17 │ 3          │ 7            │
│ 6  │ 2400.6  │ 2016-07-27 │ 7          │ 1            │
│ 7  │ 5760.0  │ 2015-09-10 │ 2          │ 1            │
│ 10 │ 250.45  │ 2015-06-27 │ 8          │ 2            │
└────┴─────────┴────────────┴────────────┴──────────────┘
**/

-- Devuelve todos los datos de los dos pedidos de mayor valor.
SELECT * FROM pedido
ORDER BY total DESC
LIMIT 2;
/**
┌────┬────────┬────────────┬────────────┬──────────────┐
│ id │ total  │   fecha    │ id_cliente │ id_comercial │
├────┼────────┼────────────┼────────────┼──────────────┤
│ 7  │ 5760.0 │ 2015-09-10 │ 2          │ 1            │
│ 12 │ 3045.6 │ 2017-04-25 │ 2          │ 1            │
└────┴────────┴────────────┴────────────┴──────────────┘
**/

-- Devuelve un listado con los identificadores de los clientes que han realizado algún pedido. Tenga en cuenta que no debe mostrar identificadores que estén repetidos.
SELECT DISTINCT id_cliente FROM pedido;
/**
┌────────────┐
│ id_cliente │
├────────────┤
│ 5          │
│ 1          │
│ 2          │
│ 8          │
│ 7          │
│ 4          │
│ 3          │
│ 6          │
└────────────┘
**/

-- Devuelve un listado de todos los pedidos que se realizaron durante el año 2017, cuya cantidad total sea superior a 500€.
SELECT * FROM pedido
WHERE strftime('%Y', fecha) = '2017' AND total > 500;
/**
┌────┬─────────┬────────────┬────────────┬──────────────┐
│ id │  total  │   fecha    │ id_cliente │ id_comercial │
├────┼─────────┼────────────┼────────────┼──────────────┤
│ 5  │ 948.5   │ 2017-09-10 │ 5          │ 2            │
│ 8  │ 1983.43 │ 2017-10-10 │ 4          │ 6            │
│ 12 │ 3045.6  │ 2017-04-25 │ 2          │ 1            │
└────┴─────────┴────────────┴────────────┴──────────────┘
**/

-- Devuelve un listado con el nombre y los apellidos de los comerciales que tienen una comisión entre 0.05 y 0.11.
SELECT nombre, apellido1, apellido2 FROM comercial
WHERE categoria BETWEEN 0.05 AND 0.11;
/**
┌─────────┬───────────┬───────────┐
│ nombre  │ apellido1 │ apellido2 │
├─────────┼───────────┼───────────┤
│ Diego   │ Flores    │ Salas     │
│ Antonio │ Vega      │ Hernández │
│ Alfredo │ Ruiz      │ Flores    │
└─────────┴───────────┴───────────┘
**/

-- Devuelve el valor de la comisión de mayor valor que existe en la tabla comercial.
SELECT MAX(categoria) AS comision_mayor_valor FROM comercial;
/**
┌──────────────────────┐
│ comision_mayor_valor │
├──────────────────────┤
│ 0.15                 │
└──────────────────────┘
**/

-- Devuelve el identificador, nombre y primer apellido de aquellos clientes cuyo segundo apellido no es NULL. El listado deberá estar ordenado alfabéticamente por apellidos y nombre.
SELECT id, nombre, apellido1 FROM cliente
WHERE apellido2 IS NOT NULL
ORDER BY apellido1, nombre;
/**
┌────┬───────────┬───────────┐
│ id │  nombre   │ apellido1 │
├────┼───────────┼───────────┤
│ 5  │ Marcos    │ Loyola    │
│ 9  │ Guillermo │ López     │
│ 1  │ Aarón     │ Rivero    │
│ 3  │ Adolfo    │ Rubio     │
│ 8  │ Pepe      │ Ruiz      │
│ 2  │ Adela     │ Salas     │
│ 10 │ Daniel    │ Santana   │
│ 6  │ María     │ Santana   │
└────┴───────────┴───────────┘
**/

-- Devuelve un listado de los nombres de los clientes que empiezan por A y terminan por n y también los nombres que empiezan por P. El listado deberá estar ordenado alfabéticamente.
SELECT nombre FROM cliente
WHERE nombre REGEXP '^A.*n$|^P'
ORDER BY nombre;
/**
┌────────┐
│ nombre │
├────────┤
│ Aarón  │
│ Adrián │
│ Pepe   │
│ Pilar  │
└────────┘
**/

-- Devuelve un listado de los nombres de los clientes que no empiezan por A. El listado deberá estar ordenado alfabéticamente.
SELECT nombre FROM cliente
WHERE NOT nombre REGEXP '^A'
ORDER BY nombre;
/**
┌───────────┐
│  nombre   │
├───────────┤
│ Daniel    │
│ Guillermo │
│ Marcos    │
│ María     │
│ Pepe      │
│ Pilar     │
└───────────┘
**/

-- Devuelve un listado con los nombres de los comerciales que terminan por el o o. Tenga en cuenta que se deberán eliminar los nombres repetidos.
SELECT DISTINCT nombre FROM comercial
WHERE nombre REGEXP 'o$';
/**
┌─────────┐
│ nombre  │
├─────────┤
│ Diego   │
│ Antonio │
│ Alfredo │
└─────────┘
**/



-- Consultas multitabla

-- Nota: Resuelva todas las consultas utilizando las cláusulas INNER JOIN.


-- Devuelve un listado con el identificador, nombre y los apellidos de todos los clientes que han realizado algún pedido. El listado debe estar ordenado alfabéticamente y se deben eliminar los elementos repetidos.
SELECT DISTINCT c.id, c.nombre, c.apellido1, c.apellido2
FROM cliente c
INNER JOIN pedido p ON c.id = p.id_cliente
ORDER BY c.nombre, c.apellido1, c.apellido2;
/**
┌────┬────────┬───────────┬───────────┐
│ id │ nombre │ apellido1 │ apellido2 │
├────┼────────┼───────────┼───────────┤
│ 1  │ Aarón  │ Rivero    │ Gómez     │
│ 2  │ Adela  │ Salas     │ Díaz      │
│ 3  │ Adolfo │ Rubio     │ Flores    │
│ 4  │ Adrián │ Suárez    │           │
│ 5  │ Marcos │ Loyola    │ Méndez    │
│ 6  │ María  │ Santana   │ Moreno    │
│ 8  │ Pepe   │ Ruiz      │ Santana   │
│ 7  │ Pilar  │ Ruiz      │           │
└────┴────────┴───────────┴───────────┘
**/

-- Devuelve un listado que muestre todos los pedidos que ha realizado cada cliente. El resultado debe mostrar todos los datos de los pedidos y del cliente. El listado debe mostrar los datos de los clientes ordenados alfabéticamente.
SELECT c.id, c.nombre, c.apellido1, c.apellido2, p.*
FROM cliente c
INNER JOIN pedido p ON c.id = p.id_cliente
ORDER BY c.nombre, c.apellido1, c.apellido2;
/**
┌────┬────────┬───────────┬───────────┬────┬─────────┬────────────┬────────────┬──────────────┐
│ id │ nombre │ apellido1 │ apellido2 │ id │  total  │   fecha    │ id_cliente │ id_comercial │
├────┼────────┼───────────┼───────────┼────┼─────────┼────────────┼────────────┼──────────────┤
│ 1  │ Aarón  │ Rivero    │ Gómez     │ 2  │ 270.65  │ 2016-09-10 │ 1          │ 5            │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ 15 │ 370.85  │ 2019-03-11 │ 1          │ 5            │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ 16 │ 2389.23 │ 2019-03-11 │ 1          │ 5            │
│ 2  │ Adela  │ Salas     │ Díaz      │ 3  │ 65.26   │ 2017-10-05 │ 2          │ 1            │
│ 2  │ Adela  │ Salas     │ Díaz      │ 7  │ 5760.0  │ 2015-09-10 │ 2          │ 1            │
│ 2  │ Adela  │ Salas     │ Díaz      │ 12 │ 3045.6  │ 2017-04-25 │ 2          │ 1            │
│ 3  │ Adolfo │ Rubio     │ Flores    │ 11 │ 75.29   │ 2016-08-17 │ 3          │ 7            │
│ 4  │ Adrián │ Suárez    │           │ 8  │ 1983.43 │ 2017-10-10 │ 4          │ 6            │
│ 5  │ Marcos │ Loyola    │ Méndez    │ 1  │ 150.5   │ 2017-10-05 │ 5          │ 2            │
│ 5  │ Marcos │ Loyola    │ Méndez    │ 5  │ 948.5   │ 2017-09-10 │ 5          │ 2            │
│ 6  │ María  │ Santana   │ Moreno    │ 13 │ 545.75  │ 2019-01-25 │ 6          │ 1            │
│ 6  │ María  │ Santana   │ Moreno    │ 14 │ 145.82  │ 2017-02-02 │ 6          │ 1            │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ 4  │ 110.5   │ 2016-08-17 │ 8          │ 3            │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ 9  │ 2480.4  │ 2016-10-10 │ 8          │ 3            │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ 10 │ 250.45  │ 2015-06-27 │ 8          │ 2            │
│ 7  │ Pilar  │ Ruiz      │           │ 6  │ 2400.6  │ 2016-07-27 │ 7          │ 1            │
└────┴────────┴───────────┴───────────┴────┴─────────┴────────────┴────────────┴──────────────┘
**/

-- Devuelve un listado que muestre todos los pedidos en los que ha participado un comercial. El resultado debe mostrar todos los datos de los pedidos y de los comerciales. El listado debe mostrar los datos de los comerciales ordenados alfabéticamente.
SELECT co.id, co.nombre, co.apellido1, co.apellido2, p.*
FROM comercial co
INNER JOIN pedido p ON co.id = p.id_comercial
ORDER BY co.nombre, co.apellido1, co.apellido2;
/**
┌────┬─────────┬───────────┬───────────┬────┬─────────┬────────────┬────────────┬──────────────┐
│ id │ nombre  │ apellido1 │ apellido2 │ id │  total  │   fecha    │ id_cliente │ id_comercial │
├────┼─────────┼───────────┼───────────┼────┼─────────┼────────────┼────────────┼──────────────┤
│ 5  │ Antonio │ Carretero │ Ortega    │ 2  │ 270.65  │ 2016-09-10 │ 1          │ 5            │
│ 5  │ Antonio │ Carretero │ Ortega    │ 15 │ 370.85  │ 2019-03-11 │ 1          │ 5            │
│ 5  │ Antonio │ Carretero │ Ortega    │ 16 │ 2389.23 │ 2019-03-11 │ 1          │ 5            │
│ 7  │ Antonio │ Vega      │ Hernández │ 11 │ 75.29   │ 2016-08-17 │ 3          │ 7            │
│ 1  │ Daniel  │ Sáez      │ Vega      │ 3  │ 65.26   │ 2017-10-05 │ 2          │ 1            │
│ 1  │ Daniel  │ Sáez      │ Vega      │ 6  │ 2400.6  │ 2016-07-27 │ 7          │ 1            │
│ 1  │ Daniel  │ Sáez      │ Vega      │ 7  │ 5760.0  │ 2015-09-10 │ 2          │ 1            │
│ 1  │ Daniel  │ Sáez      │ Vega      │ 12 │ 3045.6  │ 2017-04-25 │ 2          │ 1            │
│ 1  │ Daniel  │ Sáez      │ Vega      │ 13 │ 545.75  │ 2019-01-25 │ 6          │ 1            │
│ 1  │ Daniel  │ Sáez      │ Vega      │ 14 │ 145.82  │ 2017-02-02 │ 6          │ 1            │
│ 3  │ Diego   │ Flores    │ Salas     │ 4  │ 110.5   │ 2016-08-17 │ 8          │ 3            │
│ 3  │ Diego   │ Flores    │ Salas     │ 9  │ 2480.4  │ 2016-10-10 │ 8          │ 3            │
│ 2  │ Juan    │ Gómez     │ López     │ 1  │ 150.5   │ 2017-10-05 │ 5          │ 2            │
│ 2  │ Juan    │ Gómez     │ López     │ 5  │ 948.5   │ 2017-09-10 │ 5          │ 2            │
│ 2  │ Juan    │ Gómez     │ López     │ 10 │ 250.45  │ 2015-06-27 │ 8          │ 2            │
│ 6  │ Manuel  │ Domínguez │ Hernández │ 8  │ 1983.43 │ 2017-10-10 │ 4          │ 6            │
└────┴─────────┴───────────┴───────────┴────┴─────────┴────────────┴────────────┴──────────────┘
**/

-- Devuelve un listado que muestre todos los clientes, con todos los pedidos que han realizado y con los datos de los comerciales asociados a cada pedido.
SELECT c.id, c.nombre, c.apellido1, c.apellido2, p.*, co.nombre AS nombre_comercial, co.apellido1 AS apellido1_comercial, co.apellido2 AS apellido2_comercial
FROM cliente c
INNER JOIN pedido p ON c.id = p.id_cliente
INNER JOIN comercial co ON p.id_comercial = co.id
ORDER BY c.nombre, c.apellido1, c.apellido2, p.fecha;
/**
┌────┬────────┬───────────┬───────────┬────┬─────────┬────────────┬────────────┬──────────────┬──────────────────┬─────────────────────┬─────────────────────┐
│ id │ nombre │ apellido1 │ apellido2 │ id │  total  │   fecha    │ id_cliente │ id_comercial │ nombre_comercial │ apellido1_comercial │ apellido2_comercial │
├────┼────────┼───────────┼───────────┼────┼─────────┼────────────┼────────────┼──────────────┼──────────────────┼─────────────────────┼─────────────────────┤
│ 1  │ Aarón  │ Rivero    │ Gómez     │ 2  │ 270.65  │ 2016-09-10 │ 1          │ 5            │ Antonio          │ Carretero           │ Ortega              │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ 15 │ 370.85  │ 2019-03-11 │ 1          │ 5            │ Antonio          │ Carretero           │ Ortega              │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ 16 │ 2389.23 │ 2019-03-11 │ 1          │ 5            │ Antonio          │ Carretero           │ Ortega              │
│ 2  │ Adela  │ Salas     │ Díaz      │ 7  │ 5760.0  │ 2015-09-10 │ 2          │ 1            │ Daniel           │ Sáez                │ Vega                │
│ 2  │ Adela  │ Salas     │ Díaz      │ 12 │ 3045.6  │ 2017-04-25 │ 2          │ 1            │ Daniel           │ Sáez                │ Vega                │
│ 2  │ Adela  │ Salas     │ Díaz      │ 3  │ 65.26   │ 2017-10-05 │ 2          │ 1            │ Daniel           │ Sáez                │ Vega                │
│ 3  │ Adolfo │ Rubio     │ Flores    │ 11 │ 75.29   │ 2016-08-17 │ 3          │ 7            │ Antonio          │ Vega                │ Hernández           │
│ 4  │ Adrián │ Suárez    │           │ 8  │ 1983.43 │ 2017-10-10 │ 4          │ 6            │ Manuel           │ Domínguez           │ Hernández           │
│ 5  │ Marcos │ Loyola    │ Méndez    │ 5  │ 948.5   │ 2017-09-10 │ 5          │ 2            │ Juan             │ Gómez               │ López               │
│ 5  │ Marcos │ Loyola    │ Méndez    │ 1  │ 150.5   │ 2017-10-05 │ 5          │ 2            │ Juan             │ Gómez               │ López               │
│ 6  │ María  │ Santana   │ Moreno    │ 14 │ 145.82  │ 2017-02-02 │ 6          │ 1            │ Daniel           │ Sáez                │ Vega                │
│ 6  │ María  │ Santana   │ Moreno    │ 13 │ 545.75  │ 2019-01-25 │ 6          │ 1            │ Daniel           │ Sáez                │ Vega                │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ 10 │ 250.45  │ 2015-06-27 │ 8          │ 2            │ Juan             │ Gómez               │ López               │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ 4  │ 110.5   │ 2016-08-17 │ 8          │ 3            │ Diego            │ Flores              │ Salas               │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ 9  │ 2480.4  │ 2016-10-10 │ 8          │ 3            │ Diego            │ Flores              │ Salas               │
│ 7  │ Pilar  │ Ruiz      │           │ 6  │ 2400.6  │ 2016-07-27 │ 7          │ 1            │ Daniel           │ Sáez                │ Vega                │
└────┴────────┴───────────┴───────────┴────┴─────────┴────────────┴────────────┴──────────────┴──────────────────┴─────────────────────┴─────────────────────┘
**/

-- Devuelve un listado de todos los clientes que realizaron un pedido durante el año 2017, cuya cantidad esté entre 300 € y 1000 €.
SELECT DISTINCT c.id, c.nombre, c.apellido1, c.apellido2
FROM cliente c
INNER JOIN pedido p ON c.id = p.id_cliente
WHERE strftime('%Y', p.fecha) = '2017' AND p.total BETWEEN 300 AND 1000;
/**
┌────┬────────┬───────────┬───────────┐
│ id │ nombre │ apellido1 │ apellido2 │
├────┼────────┼───────────┼───────────┤
│ 5  │ Marcos │ Loyola    │ Méndez    │
└────┴────────┴───────────┴───────────┘
**/

-- Devuelve el nombre y los apellidos de todos los comerciales que ha participado en algún pedido realizado por María Santana Moreno.
SELECT DISTINCT co.nombre, co.apellido1, co.apellido2
FROM comercial co
INNER JOIN pedido p ON co.id = p.id_comercial
INNER JOIN cliente c ON p.id_cliente = c.id
WHERE c.nombre||' '||c.apellido1||' '||c.apellido2 = 'María Santana Moreno';
/**
┌────────┬───────────┬───────────┐
│ nombre │ apellido1 │ apellido2 │
├────────┼───────────┼───────────┤
│ Daniel │ Sáez      │ Vega      │
└────────┴───────────┴───────────┘
**/

-- Devuelve el nombre de todos los clientes que han realizado algún pedido con el comercial Daniel Sáez Vega.
SELECT DISTINCT c.nombre
FROM cliente c
INNER JOIN pedido p ON c.id = p.id_cliente
INNER JOIN comercial co ON p.id_comercial = co.id
WHERE co.nombre||' '||co.apellido1||' '||co.apellido2 = 'Daniel Sáez Vega';
/**
┌────────┐
│ nombre │
├────────┤
│ Adela  │
│ Pilar  │
│ María  │
└────────┘
**/



-- Consultas resumen (Funciones)



-- Calcula la cantidad total que suman todos los pedidos que aparecen en la tabla pedido.
SELECT SUM(total) AS cantidad_total FROM pedido;
/**
┌────────────────┐
│ cantidad_total │
├────────────────┤
│ 20992.83       │
└────────────────┘
**/

-- Calcula la cantidad media de todos los pedidos que aparecen en la tabla pedido.
SELECT AVG(total) AS cantidad_media FROM pedido;
/**
┌────────────────┐
│ cantidad_media │
├────────────────┤
│ 1312.051875    │
└────────────────┘
**/

-- Calcula el número total de comerciales distintos que aparecen en la tabla pedido.
SELECT COUNT(DISTINCT id_comercial) AS total_comerciales FROM pedido;
/**
┌───────────────────┐
│ total_comerciales │
├───────────────────┤
│ 6                 │
└───────────────────┘
**/

-- Calcula el número total de clientes que aparecen en la tabla cliente.
SELECT COUNT(*) AS total_clientes FROM cliente;
/**
┌────────────────┐
│ total_clientes │
├────────────────┤
│ 10             │
└────────────────┘
**/

-- Calcula cuál es la mayor cantidad que aparece en la tabla pedido.
SELECT MAX(total) AS mayor_cantidad FROM pedido;
/**
┌────────────────┐
│ mayor_cantidad │
├────────────────┤
│ 5760.0         │
└────────────────┘
**/

-- Calcula cuál es la menor cantidad que aparece en la tabla pedido.
SELECT MIN(total) AS menor_cantidad FROM pedido;
/**
┌────────────────┐
│ menor_cantidad │
├────────────────┤
│ 65.26          │
└────────────────┘
**/

-- Calcula cuál es el valor máximo de categoría para cada una de las ciudades que aparece en la tabla cliente.
SELECT ciudad, MAX(categoria) AS max_categoria
FROM cliente
GROUP BY ciudad;
/**
┌─────────┬───────────────┐
│ ciudad  │ max_categoria │
├─────────┼───────────────┤
│ Almería │ 200           │
│ Cádiz   │ 100           │
│ Granada │ 225           │
│ Huelva  │ 200           │
│ Jaén    │ 300           │
│ Sevilla │ 300           │
└─────────┴───────────────┘
**/

-- Calcula cuál es el máximo valor de los pedidos realizados durante el mismo día para cada uno de los clientes. Es decir, el mismo cliente puede haber realizado varios pedidos de diferentes cantidades el mismo día. Se pide que se calcule cuál es el pedido de máximo valor para cada uno de los días en los que un cliente ha realizado un pedido. Muestra el identificador del cliente, nombre, apellidos, la fecha y el valor de la cantidad.
SELECT id_cliente, nombre, apellido1, fecha, MAX(total) AS max_valor_pedido
FROM pedido
INNER JOIN cliente ON pedido.id_cliente = cliente.id
GROUP BY id_cliente, fecha;
/**
┌────────────┬────────┬───────────┬────────────┬──────────────────┐
│ id_cliente │ nombre │ apellido1 │   fecha    │ max_valor_pedido │
├────────────┼────────┼───────────┼────────────┼──────────────────┤
│ 1          │ Aarón  │ Rivero    │ 2016-09-10 │ 270.65           │
│ 1          │ Aarón  │ Rivero    │ 2019-03-11 │ 2389.23          │
│ 2          │ Adela  │ Salas     │ 2015-09-10 │ 5760.0           │
│ 2          │ Adela  │ Salas     │ 2017-04-25 │ 3045.6           │
│ 2          │ Adela  │ Salas     │ 2017-10-05 │ 65.26            │
│ 3          │ Adolfo │ Rubio     │ 2016-08-17 │ 75.29            │
│ 4          │ Adrián │ Suárez    │ 2017-10-10 │ 1983.43          │
│ 5          │ Marcos │ Loyola    │ 2017-09-10 │ 948.5            │
│ 5          │ Marcos │ Loyola    │ 2017-10-05 │ 150.5            │
│ 6          │ María  │ Santana   │ 2017-02-02 │ 145.82           │
│ 6          │ María  │ Santana   │ 2019-01-25 │ 545.75           │
│ 7          │ Pilar  │ Ruiz      │ 2016-07-27 │ 2400.6           │
│ 8          │ Pepe   │ Ruiz      │ 2015-06-27 │ 250.45           │
│ 8          │ Pepe   │ Ruiz      │ 2016-08-17 │ 110.5            │
│ 8          │ Pepe   │ Ruiz      │ 2016-10-10 │ 2480.4           │
└────────────┴────────┴───────────┴────────────┴──────────────────┘
**/

-- Calcula cuál es el máximo valor de los pedidos realizados durante el mismo día para cada uno de los clientes, teniendo en cuenta que sólo queremos mostrar aquellos pedidos que superen la cantidad de 2000 €.
SELECT id_cliente, nombre, apellido1, fecha, MAX(total) AS max_valor_pedido
FROM pedido
INNER JOIN cliente ON pedido.id_cliente = cliente.id
WHERE total > 2000
GROUP BY id_cliente, fecha;
/**
┌────────────┬────────┬───────────┬────────────┬──────────────────┐
│ id_cliente │ nombre │ apellido1 │   fecha    │ max_valor_pedido │
├────────────┼────────┼───────────┼────────────┼──────────────────┤
│ 1          │ Aarón  │ Rivero    │ 2019-03-11 │ 2389.23          │
│ 2          │ Adela  │ Salas     │ 2015-09-10 │ 5760.0           │
│ 2          │ Adela  │ Salas     │ 2017-04-25 │ 3045.6           │
│ 7          │ Pilar  │ Ruiz      │ 2016-07-27 │ 2400.6           │
│ 8          │ Pepe   │ Ruiz      │ 2016-10-10 │ 2480.4           │
└────────────┴────────┴───────────┴────────────┴──────────────────┘
**/

-- Calcula el máximo valor de los pedidos realizados para cada uno de los comerciales durante la fecha 2016-08-17. Muestra el identificador del comercial, nombre, apellidos y total.
SELECT id_comercial, nombre, apellido1, apellido2, MAX(total) AS max_valor_pedido
FROM pedido
INNER JOIN comercial ON pedido.id_comercial = comercial.id
WHERE fecha = '2016-08-17'
GROUP BY id_comercial;
/**
┌──────────────┬─────────┬───────────┬───────────┬──────────────────┐
│ id_comercial │ nombre  │ apellido1 │ apellido2 │ max_valor_pedido │
├──────────────┼─────────┼───────────┼───────────┼──────────────────┤
│ 3            │ Diego   │ Flores    │ Salas     │ 110.5            │
│ 7            │ Antonio │ Vega      │ Hernández │ 75.29            │
└──────────────┴─────────┴───────────┴───────────┴──────────────────┘
**/

-- Devuelve un listado con el identificador de cliente, nombre y apellidos y el número total de pedidos que ha realizado cada uno de clientes. Tenga en cuenta que pueden existir clientes que no han realizado ningún pedido. Estos clientes también deben aparecer en el listado indicando que el número de pedidos realizados es 0.
SELECT cliente.id, nombre, apellido1, apellido2, COUNT(pedido.id) AS total_pedidos
FROM cliente
LEFT JOIN pedido ON cliente.id = pedido.id_cliente
GROUP BY cliente.id, nombre, apellido1, apellido2;
/**
┌────┬───────────┬───────────┬───────────┬───────────────┐
│ id │  nombre   │ apellido1 │ apellido2 │ total_pedidos │
├────┼───────────┼───────────┼───────────┼───────────────┤
│ 1  │ Aarón     │ Rivero    │ Gómez     │ 3             │
│ 2  │ Adela     │ Salas     │ Díaz      │ 3             │
│ 3  │ Adolfo    │ Rubio     │ Flores    │ 1             │
│ 4  │ Adrián    │ Suárez    │           │ 1             │
│ 5  │ Marcos    │ Loyola    │ Méndez    │ 2             │
│ 6  │ María     │ Santana   │ Moreno    │ 2             │
│ 7  │ Pilar     │ Ruiz      │           │ 1             │
│ 8  │ Pepe      │ Ruiz      │ Santana   │ 3             │
│ 9  │ Guillermo │ López     │ Gómez     │ 0             │
│ 10 │ Daniel    │ Santana   │ Loyola    │ 0             │
└────┴───────────┴───────────┴───────────┴───────────────┘
**/

-- Devuelve un listado con el identificador de cliente, nombre y apellidos y el número total de pedidos que ha realizado cada uno de clientes durante el año 2017.
SELECT cliente.id, nombre, apellido1, apellido2, COUNT(pedido.id) AS total_pedidos_2017
FROM cliente
LEFT JOIN pedido ON cliente.id = pedido.id_cliente AND strftime('%Y', pedido.fecha) = '2017'
GROUP BY cliente.id, nombre, apellido1, apellido2;
/**
┌────┬───────────┬───────────┬───────────┬────────────────────┐
│ id │  nombre   │ apellido1 │ apellido2 │ total_pedidos_2017 │
├────┼───────────┼───────────┼───────────┼────────────────────┤
│ 1  │ Aarón     │ Rivero    │ Gómez     │ 0                  │
│ 2  │ Adela     │ Salas     │ Díaz      │ 2                  │
│ 3  │ Adolfo    │ Rubio     │ Flores    │ 0                  │
│ 4  │ Adrián    │ Suárez    │           │ 1                  │
│ 5  │ Marcos    │ Loyola    │ Méndez    │ 2                  │
│ 6  │ María     │ Santana   │ Moreno    │ 1                  │
│ 7  │ Pilar     │ Ruiz      │           │ 0                  │
│ 8  │ Pepe      │ Ruiz      │ Santana   │ 0                  │
│ 9  │ Guillermo │ López     │ Gómez     │ 0                  │
│ 10 │ Daniel    │ Santana   │ Loyola    │ 0                  │
└────┴───────────┴───────────┴───────────┴────────────────────┘
**/

-- Devuelve un listado que muestre el identificador de cliente, nombre, primer apellido y el valor de la máxima cantidad del pedido realizado por cada uno de los clientes. El resultado debe mostrar aquellos clientes que no han realizado ningún pedido indicando que la máxima cantidad de sus pedidos realizados es 0.
SELECT cliente.id, nombre, apellido1, MAX(total) AS max_cantidad_pedido
FROM cliente
LEFT JOIN pedido ON cliente.id = pedido.id_cliente
GROUP BY cliente.id, nombre, apellido1;
/**
┌────┬───────────┬───────────┬─────────────────────┐
│ id │  nombre   │ apellido1 │ max_cantidad_pedido │
├────┼───────────┼───────────┼─────────────────────┤
│ 1  │ Aarón     │ Rivero    │ 2389.23             │
│ 2  │ Adela     │ Salas     │ 5760.0              │
│ 3  │ Adolfo    │ Rubio     │ 75.29               │
│ 4  │ Adrián    │ Suárez    │ 1983.43             │
│ 5  │ Marcos    │ Loyola    │ 948.5               │
│ 6  │ María     │ Santana   │ 545.75              │
│ 7  │ Pilar     │ Ruiz      │ 2400.6              │
│ 8  │ Pepe      │ Ruiz      │ 2480.4              │
│ 9  │ Guillermo │ López     │                     │
│ 10 │ Daniel    │ Santana   │                     │
└────┴───────────┴───────────┴─────────────────────┘
**/

-- Devuelve cuál ha sido el pedido de máximo valor que se ha realizado cada año.
SELECT strftime('%Y', fecha) AS año, MAX(total) AS max_valor_pedido
FROM pedido
GROUP BY año;
/**
┌──────┬──────────────────┐
│ año  │ max_valor_pedido │
├──────┼──────────────────┤
│ 2015 │ 5760.0           │
│ 2016 │ 2480.4           │
│ 2017 │ 3045.6           │
│ 2019 │ 2389.23          │
└──────┴──────────────────┘
**/

-- Devuelve el número total de pedidos que se han realizado cada año.
SELECT strftime('%Y', fecha) AS año, COUNT(*) AS total_pedidos
FROM pedido
GROUP BY año;
/**
┌──────┬───────────────┐
│ año  │ total_pedidos │
├──────┼───────────────┤
│ 2015 │ 2             │
│ 2016 │ 5             │
│ 2017 │ 6             │
│ 2019 │ 3             │
└──────┴───────────────┘
**/



-- Subconsultas con operadores básicos de comparación



-- Devuelve un listado con todos los pedidos que ha realizado Adela Salas Díaz. (Sin utilizar INNER JOIN).
SELECT *
FROM pedido
WHERE id_cliente = (SELECT id FROM cliente WHERE nombre = 'Adela' AND apellido1 = 'Salas' AND apellido2 = 'Díaz');
/**
┌────┬────────┬────────────┬────────────┬──────────────┐
│ id │ total  │   fecha    │ id_cliente │ id_comercial │
├────┼────────┼────────────┼────────────┼──────────────┤
│ 3  │ 65.26  │ 2017-10-05 │ 2          │ 1            │
│ 7  │ 5760.0 │ 2015-09-10 │ 2          │ 1            │
│ 12 │ 3045.6 │ 2017-04-25 │ 2          │ 1            │
└────┴────────┴────────────┴────────────┴──────────────┘
**/

-- Devuelve el número de pedidos en los que ha participado el comercial Daniel Sáez Vega. (Sin utilizar INNER JOIN)
SELECT COUNT(*) AS num_pedidos
FROM pedido
WHERE id_comercial = (SELECT id FROM comercial WHERE nombre = 'Daniel' AND apellido1 = 'Sáez' AND apellido2 = 'Vega');
/**
┌─────────────┐
│ num_pedidos │
├─────────────┤
│ 6           │
└─────────────┘
**/

-- Devuelve los datos del cliente que realizó el pedido más caro en el año 2019. (Sin utilizar INNER JOIN)
SELECT *
FROM cliente
WHERE id = (SELECT id_cliente FROM pedido WHERE strftime('%Y', fecha) = '2019' ORDER BY total DESC LIMIT 1);
/**
┌────┬────────┬───────────┬───────────┬─────────┬───────────┐
│ id │ nombre │ apellido1 │ apellido2 │ ciudad  │ categoria │
├────┼────────┼───────────┼───────────┼─────────┼───────────┤
│ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │
└────┴────────┴───────────┴───────────┴─────────┴───────────┘
**/

-- Devuelve la fecha y la cantidad del pedido de menor valor realizado por el cliente Pepe Ruiz Santana.
SELECT fecha, total
FROM pedido
WHERE id_cliente = (SELECT id FROM cliente WHERE nombre = 'Pepe' AND apellido1 = 'Ruiz' AND apellido2 = 'Santana')
ORDER BY total ASC LIMIT 1;
/**
┌────────────┬───────┐
│   fecha    │ total │
├────────────┼───────┤
│ 2016-08-17 │ 110.5 │
└────────────┴───────┘
**/

-- Devuelve un listado con los datos de los clientes y los pedidos, de todos los clientes que han realizado un pedido durante el año 2017 con un valor mayor o igual al valor medio de los pedidos realizados durante ese mismo año.
SELECT c.*, p.*
FROM cliente c, pedido p
WHERE c.id = p.id_cliente
AND strftime('%Y', p.fecha) = '2017'
AND p.total >= (SELECT AVG(total) FROM pedido WHERE strftime('%Y', fecha) = '2017');
/**
┌────┬────────┬───────────┬───────────┬─────────┬───────────┬────┬─────────┬────────────┬────────────┬──────────────┐
│ id │ nombre │ apellido1 │ apellido2 │ ciudad  │ categoria │ id │  total  │   fecha    │ id_cliente │ id_comercial │
├────┼────────┼───────────┼───────────┼─────────┼───────────┼────┼─────────┼────────────┼────────────┼──────────────┤
│ 4  │ Adrián │ Suárez    │           │ Jaén    │ 300       │ 8  │ 1983.43 │ 2017-10-10 │ 4          │ 6            │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │ 12 │ 3045.6  │ 2017-04-25 │ 2          │ 1            │
└────┴────────┴───────────┴───────────┴─────────┴───────────┴────┴─────────┴────────────┴────────────┴──────────────┘
**/



-- Subconsultas con IN y NOT IN



-- Devuelve un listado de los clientes que no han realizado ningún pedido. (Utilizando IN o NOT IN).
SELECT *
FROM cliente
WHERE id NOT IN (SELECT id_cliente FROM pedido);
/**
┌────┬───────────┬───────────┬───────────┬─────────┬───────────┐
│ id │  nombre   │ apellido1 │ apellido2 │ ciudad  │ categoria │
├────┼───────────┼───────────┼───────────┼─────────┼───────────┤
│ 9  │ Guillermo │ López     │ Gómez     │ Granada │ 225       │
│ 10 │ Daniel    │ Santana   │ Loyola    │ Sevilla │ 125       │
└────┴───────────┴───────────┴───────────┴─────────┴───────────┘
**/

-- Devuelve un listado de los comerciales que no han realizado ningún pedido. (Utilizando IN o NOT IN).
SELECT *
FROM comercial
WHERE id NOT IN (SELECT id_comercial FROM pedido);
/**
┌────┬─────────┬───────────┬───────────┬───────────┐
│ id │ nombre  │ apellido1 │ apellido2 │ categoria │
├────┼─────────┼───────────┼───────────┼───────────┤
│ 4  │ Marta   │ Herrera   │ Gil       │ 0.14      │
│ 8  │ Alfredo │ Ruiz      │ Flores    │ 0.05      │
└────┴─────────┴───────────┴───────────┴───────────┘
**/



-- Subconsultas con EXISTS y NOT EXISTS



-- Devuelve un listado de los clientes que no han realizado ningún pedido. (Utilizando EXISTS o NOT EXISTS).
SELECT *
FROM cliente c
WHERE NOT EXISTS (SELECT * FROM pedido p WHERE p.id_cliente = c.id);
/**
┌────┬───────────┬───────────┬───────────┬─────────┬───────────┐
│ id │  nombre   │ apellido1 │ apellido2 │ ciudad  │ categoria │
├────┼───────────┼───────────┼───────────┼─────────┼───────────┤
│ 9  │ Guillermo │ López     │ Gómez     │ Granada │ 225       │
│ 10 │ Daniel    │ Santana   │ Loyola    │ Sevilla │ 125       │
└────┴───────────┴───────────┴───────────┴─────────┴───────────┘
**/

-- Devuelve un listado de los comerciales que no han realizado ningún pedido. (Utilizando EXISTS o NOT EXISTS).
SELECT *
FROM comercial co
WHERE NOT EXISTS (SELECT * FROM pedido p WHERE p.id_comercial = co.id);
/**
┌────┬─────────┬───────────┬───────────┬───────────┐
│ id │ nombre  │ apellido1 │ apellido2 │ categoria │
├────┼─────────┼───────────┼───────────┼───────────┤
│ 4  │ Marta   │ Herrera   │ Gil       │ 0.14      │
│ 8  │ Alfredo │ Ruiz      │ Flores    │ 0.05      │
└────┴─────────┴───────────┴───────────┴───────────┘
**/
