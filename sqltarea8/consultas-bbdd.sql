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

/**

**/


-- Consulta para calcular el precio medio de los coches vendidos en 2023.

/**

**/


-- Consulta para obtener el nombre y la dirección de los clientes que han comprado coches de la marca Ford.

/**

**/


-- Consulta para contar el número de coches vendidos por año.

/**

**/


-- Consulta para obtener el nombre y la edad de los clientes que han comprado coches de más de 30000 euros y llevado a reparar sus coches.

/**

**/


-- Consulta para calcular el precio total de los coches vendidos a clientes menores de 30 años.

/**

**/


-- Consulta para obtener el modelo y el año de los coches vendidos en 2023 y llevados a reparar.

/**

**/


-- Consulta para contar el número de coches vendidos por cliente.

/**

**/


-- Consulta para obtener el nombre y el precio de los coches vendidos a clientes mayores de 35 años.

/**

**/


-- Consulta para calcular el precio total de los coches vendidos a clientes que viven en una calle (en la dirección).

/**

**/


-- Consulta para obtener el nombre y la dirección de los clientes que han comprado coches de más de 30000 euros y llevado a reparar sus coches en 2024.

/**

**/


-- Consulta para calcular el precio medio de los coches vendidos en 2023 y llevados a reparar por clientes menores de 30 años.

/**

**/


-- Consulta para obtener el modelo y el año de los coches vendidos por clientes que tienen una dirección que contiene la palabra "Avenida".

/**

**/


-- Consulta para contar el número de reparaciones realizadas en 2024 por cada cliente.

/**

**/