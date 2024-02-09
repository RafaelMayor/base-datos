-- Rafael Martín Mayor.

-- Consulta para obtener el nombre y la edad de los clientes que han comprado coches de la marca Toyota.
SELECT c.nombre, c.edad FROM clientes c JOIN ventas v ON c.id_cliente = v.id_cliente JOIN coches co ON v.id_coche = co.id_coche WHERE co.marca = 'Toyota';
/**
┌────────────┬──────┐
│   nombre   │ edad │
├────────────┼──────┤
│ Juan Pérez │ 30   │
└────────────┴──────┘
**/


-- Consulta para calcular el precio promedio de los coches vendidos.
SELECT AVG(co.precio) AS precio_promedio FROM ventas v JOIN coches co ON v.id_coche = co.id_coche;
/**
┌──────────────────┐
│ precio_promedio  │
├──────────────────┤
│ 28777.7777777778 │
└──────────────────┘
**/


-- Consulta para obtener el modelo y la marca de los coches vendidos a clientes menores de 30 años.
SELECT co.modelo, co.marca FROM ventas v JOIN clientes c ON v.id_cliente = c.id_cliente JOIN coches co ON v.id_coche = co.id_coche WHERE c.edad < 30;
/**
┌────────────────┬───────────┐
│     modelo     │   marca   │
├────────────────┼───────────┤
│ Hatchback 2021 │ Honda     │
│ Coupé 2022     │ Chevrolet │
│ Híbrido 2022   │ Hyundai   │
│ Eléctrico 2021 │ Tesla     │
└────────────────┴───────────┘
**/


-- Consulta para contar el número de coches vendidos de cada marca.
SELECT co.marca, COUNT(*) AS num_coches_vendidos FROM ventas v JOIN coches co ON v.id_coche = co.id_coche GROUP BY co.marca;
/**
┌────────────┬─────────────────────┐
│   marca    │ num_coches_vendidos │
├────────────┼─────────────────────┤
│ Chevrolet  │ 1                   │
│ Ford       │ 1                   │
│ Honda      │ 1                   │
│ Hyundai    │ 1                   │
│ Mazda      │ 1                   │
│ Nissan     │ 1                   │
│ Tesla      │ 1                   │
│ Toyota     │ 1                   │
│ Volkswagen │ 1                   │
└────────────┴─────────────────────┘
**/


-- Consulta para obtener el nombre y la dirección de los clientes que han llevado a reparar sus coches en 2024.
SELECT c.nombre, c.direccion FROM clientes c JOIN reparacion r ON c.id_cliente = r.id_cliente WHERE strftime('%Y', r.fecha_reparacion) = '2024';
/**
┌─────────────────┬────────────────┐
│     nombre      │   direccion    │
├─────────────────┼────────────────┤
│ Francisco Ruiz  │ Calle I #222   │
│ Elena Torres    │ Avenida J #333 │
│ Juan Pérez      │ Calle A #123   │
│ María Gómez     │ Avenida B #456 │
│ Carlos López    │ Calle C #789   │
│ Ana Martínez    │ Avenida D #101 │
│ Pedro Rodríguez │ Calle E #234   │
│ Laura Sánchez   │ Avenida F #567 │
│ Miguel González │ Calle G #890   │
│ Isabel Díaz     │ Avenida H #111 │
│ Francisco Ruiz  │ Calle I #222   │
│ Elena Torres    │ Avenida J #333 │
└─────────────────┴────────────────┘
**/


-- Consulta para calcular el total gastado en reparaciones por cada cliente.
SELECT c.nombre, SUM(co.precio) AS total_gasto_reparaciones FROM clientes c JOIN reparacion r ON c.id_cliente = r.id_cliente JOIN coches co ON r.id_coche = co.id_coche GROUP BY c.nombre;
/**
┌─────────────────┬──────────────────────────┐
│     nombre      │ total_gasto_reparaciones │
├─────────────────┼──────────────────────────┤
│ Ana Martínez    │ 54000.0                  │
│ Carlos López    │ 60000.0                  │
│ Elena Torres    │ 68000.0                  │
│ Francisco Ruiz  │ 61000.0                  │
│ Isabel Díaz     │ 60000.0                  │
│ Juan Pérez      │ 55000.0                  │
│ Laura Sánchez   │ 62000.0                  │
│ María Gómez     │ 52000.0                  │
│ Miguel González │ 60000.0                  │
│ Pedro Rodríguez │ 48000.0                  │
└─────────────────┴──────────────────────────┘
**/


-- Consulta para obtener el nombre y la edad de los clientes que han comprado coches de más de 30000 euros.
SELECT clientes.nombre, clientes.edad FROM ventas INNER JOIN coches ON ventas.id_coche = coches.id_coche INNER JOIN clientes ON ventas.id_cliente = clientes.id_cliente WHERE coches.precio > 30000;
/**
┌─────────────────┬──────┐
│     nombre      │ edad │
├─────────────────┼──────┤
│ Pedro Rodríguez │ 40   │
│ Isabel Díaz     │ 38   │
│ Elena Torres    │ 29   │
└─────────────────┴──────┘
**/


-- Consulta para calcular el precio medio de los coches vendidos en 2023.
SELECT AVG(coches.precio) AS precio_medio FROM coches JOIN ventas ON coches.id_coche = ventas.id_coche WHERE ventas.fecha_venta REGEXP '2023';
/**
┌──────────────────┐
│   precio_medio   │
├──────────────────┤
│ 28777.7777777778 │
└──────────────────┘
**/


-- Consulta para obtener el nombre y la dirección de los clientes que han comprado coches de la marca Ford.
SELECT clientes.nombre, clientes.direccion FROM ventas INNER JOIN coches ON ventas.id_coche = coches.id_coche INNER JOIN clientes ON ventas.id_cliente = clientes.id_cliente WHERE coches.marca = 'Ford';
/**
┌──────────────┬──────────────┐
│    nombre    │  direccion   │
├──────────────┼──────────────┤
│ Carlos López │ Calle C #789 │
└──────────────┴──────────────┘
**/


-- Consulta para contar el número de coches vendidos por año.
SELECT strftime('%Y', fecha_venta) AS año, COUNT(*) AS cantidad_de_coches_vendidos FROM ventas GROUP BY strftime('%Y', fecha_venta);
/**
┌──────┬─────────────────────────────┐
│ año  │ cantidad_de_coches_vendidos │
├──────┼─────────────────────────────┤
│ 2023 │ 9                           │
└──────┴─────────────────────────────┘
**/


-- Consulta para obtener el nombre y la edad de los clientes que han comprado coches de más de 30000 euros y llevado a reparar sus coches.
SELECT clientes.nombre, clientes.edad FROM ventas INNER JOIN coches ON ventas.id_coche = coches.id_coche INNER JOIN clientes ON ventas.id_cliente = clientes.id_cliente INNER JOIN reparacion ON ventas.id_cliente = reparacion.id_cliente WHERE coches.precio > 30000;
/**
┌─────────────────┬──────┐
│     nombre      │ edad │
├─────────────────┼──────┤
│ Pedro Rodríguez │ 40   │
│ Pedro Rodríguez │ 40   │
│ Isabel Díaz     │ 38   │
│ Isabel Díaz     │ 38   │
│ Elena Torres    │ 29   │
│ Elena Torres    │ 29   │
└─────────────────┴──────┘
**/


-- Consulta para calcular el precio total de los coches vendidos a clientes menores de 30 años.
SELECT SUM(precio) AS precio_total FROM ventas INNER JOIN coches ON ventas.id_coche = coches.id_coche INNER JOIN clientes ON ventas.id_cliente = clientes.id_cliente WHERE clientes.edad < 30;
/**
┌──────────────┐
│ precio_total │
├──────────────┤
│ 117000.0     │
└──────────────┘
**/


-- Consulta para obtener el modelo y el año de los coches vendidos en 2023 y llevados a reparar.
SELECT coches.modelo, coches.año FROM ventas INNER JOIN coches ON ventas.id_coche = coches.id_coche INNER JOIN reparacion ON ventas.id_cliente = reparacion.id_cliente WHERE ventas.fecha_venta REGEXP '2023';
/**
┌────────────────┬──────┐
│     modelo     │ año  │
├────────────────┼──────┤
│ Sedán 2022     │ 2022 │
│ Sedán 2022     │ 2022 │
│ Hatchback 2021 │ 2021 │
│ Hatchback 2021 │ 2021 │
│ SUV 2023       │ 2023 │
│ SUV 2023       │ 2023 │
│ Coupé 2022     │ 2022 │
│ Coupé 2022     │ 2022 │
│ Camioneta 2023 │ 2023 │
│ Camioneta 2023 │ 2023 │
│ Compacto 2021  │ 2021 │
│ Compacto 2021  │ 2021 │
│ Híbrido 2022   │ 2022 │
│ Híbrido 2022   │ 2022 │
│ Deportivo 2023 │ 2023 │
│ Deportivo 2023 │ 2023 │
│ Eléctrico 2021 │ 2021 │
│ Eléctrico 2021 │ 2021 │
└────────────────┴──────┘
**/


-- Consulta para contar el número de coches vendidos por cliente.
SELECT clientes.nombre, COUNT(*) AS numero_coches_vendidos FROM ventas INNER JOIN clientes ON ventas.id_cliente = clientes.id_cliente GROUP BY clientes.nombre;
/**
┌─────────────────┬────────────────────────┐
│     nombre      │ numero_coches_vendidos │
├─────────────────┼────────────────────────┤
│ Ana Martínez    │ 1                      │
│ Carlos López    │ 1                      │
│ Elena Torres    │ 1                      │
│ Isabel Díaz     │ 1                      │
│ Juan Pérez      │ 1                      │
│ Laura Sánchez   │ 1                      │
│ María Gómez     │ 1                      │
│ Miguel González │ 1                      │
│ Pedro Rodríguez │ 1                      │
└─────────────────┴────────────────────────┘
**/


-- Consulta para obtener el nombre y el precio de los coches vendidos a clientes mayores de 35 años.
SELECT clientes.nombre, coches.precio FROM ventas INNER JOIN coches ON ventas.id_coche = coches.id_coche INNER JOIN clientes ON ventas.id_cliente = clientes.id_cliente WHERE clientes.edad > 35;
/**
┌─────────────────┬─────────┐
│     nombre      │ precio  │
├─────────────────┼─────────┤
│ Pedro Rodríguez │ 32000.0 │
│ Isabel Díaz     │ 35000.0 │
└─────────────────┴─────────┘
**/


-- Consulta para calcular el precio total de los coches vendidos a clientes que viven en una calle (en la dirección).
SELECT SUM(precio) AS precio_total FROM ventas INNER JOIN coches ON ventas.id_coche = coches.id_coche INNER JOIN clientes ON ventas.id_cliente = clientes.id_cliente WHERE clientes.direccion REGEXP 'Calle';
/**
┌──────────────┐
│ precio_total │
├──────────────┤
│ 114000.0     │
└──────────────┘
**/


-- Consulta para obtener el nombre y la dirección de los clientes que han comprado coches de más de 30000 euros y llevado a reparar sus coches en 2024.
SELECT clientes.nombre, clientes.direccion FROM ventas INNER JOIN coches ON ventas.id_coche = coches.id_coche INNER JOIN clientes ON ventas.id_cliente = clientes.id_cliente INNER JOIN reparacion ON ventas.id_cliente = reparacion.id_cliente WHERE coches.precio > 30000 AND reparacion.fecha_reparacion REGEXP '2024';
/**
┌─────────────────┬────────────────┐
│     nombre      │   direccion    │
├─────────────────┼────────────────┤
│ Pedro Rodríguez │ Calle E #234   │
│ Isabel Díaz     │ Avenida H #111 │
│ Elena Torres    │ Avenida J #333 │
│ Elena Torres    │ Avenida J #333 │
└─────────────────┴────────────────┘
**/


-- Consulta para calcular el precio medio de los coches vendidos en 2023 y llevados a reparar por clientes menores de 30 años.
SELECT AVG(precio) AS precio_medio FROM coches INNER JOIN ventas ON coches.id_coche = ventas.id_coche INNER JOIN clientes ON ventas.id_cliente = clientes.id_cliente INNER JOIN reparacion ON ventas.id_cliente = reparacion.id_cliente WHERE clientes.edad < 30 AND ventas.fecha_venta REGEXP '2023' AND reparacion.fecha_reparacion REGEXP '2023';
/**
┌──────────────────┐
│   precio_medio   │
├──────────────────┤
│ 25666.6666666667 │
└──────────────────┘
**/


-- Consulta para obtener el modelo y el año de los coches vendidos por clientes que tienen una dirección que contiene la palabra "Avenida".
SELECT modelo, año FROM coches INNER JOIN ventas ON coches.id_coche = ventas.id_coche INNER JOIN clientes ON ventas.id_cliente = clientes.id_cliente WHERE clientes.direccion REGEXP 'Avenida';
/**
┌────────────────┬──────┐
│     modelo     │ año  │
├────────────────┼──────┤
│ Hatchback 2021 │ 2021 │
│ Coupé 2022     │ 2022 │
│ Compacto 2021  │ 2021 │
│ Deportivo 2023 │ 2023 │
│ Eléctrico 2021 │ 2021 │
└────────────────┴──────┘
**/


-- Consulta para contar el número de reparaciones realizadas en 2024 por cada cliente.
SELECT clientes.nombre, COUNT(*) AS numero_reparaciones FROM clientes INNER JOIN reparacion ON clientes.id_cliente = reparacion.id_cliente WHERE reparacion.fecha_reparacion REGEXP '2024' GROUP BY clientes.nombre;
/**
┌─────────────────┬─────────────────────┐
│     nombre      │ numero_reparaciones │
├─────────────────┼─────────────────────┤
│ Ana Martínez    │ 1                   │
│ Carlos López    │ 1                   │
│ Elena Torres    │ 2                   │
│ Francisco Ruiz  │ 2                   │
│ Isabel Díaz     │ 1                   │
│ Juan Pérez      │ 1                   │
│ Laura Sánchez   │ 1                   │
│ María Gómez     │ 1                   │
│ Miguel González │ 1                   │
│ Pedro Rodríguez │ 1                   │
└─────────────────┴─────────────────────┘
**/