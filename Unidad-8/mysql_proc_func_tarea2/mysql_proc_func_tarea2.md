<div align="justify">

<div align="right">
Rafael Martín Mayor.
</div>

# Tarea 2 Procedimientos y Funciones MySQL:

```sql
-- Carga de BBDD Jardineria:

-- Descargo jardineria.sql y entro a MySQL con:

sudo mysql -u root -p

-- Introduzco las contraseñas y hago la carga de la BBDD con:

source jardineria.sql

-- Realice los siguientes procedimientos y funciones sobre la base de datos jardineria.

-- Función calcular_precio_total_pedido


DELIMITER //
DROP FUNCTION IF EXISTS calcular_precio_total_pedido//

CREATE FUNCTION calcular_precio_total_pedido(codigo_pedido INT)
RETURNS FLOAT DETERMINISTIC
BEGIN
    DECLARE total_pedido FLOAT DEFAULT 0.00;

    SELECT SUM(dp.cantidad * pr.precio_venta) INTO total_pedido
    FROM detalle_pedido dp
    INNER JOIN producto pr ON dp.codigo_producto = pr.codigo_producto
    WHERE dp.codigo_pedido = codigo_pedido;

    RETURN total_pedido;
END //

DELIMITER ;

SELECT calcular_precio_total_pedido(1);

/**
+---------------------------------+
| calcular_precio_total_pedido(1) |
+---------------------------------+
|                            1687 |
+---------------------------------+
1 row in set (0,11 sec)
**/

-- Función calcular_suma_pedidos_cliente

DELIMITER //
DROP FUNCTION IF EXISTS calcular_suma_pedidos_cliente//

CREATE FUNCTION calcular_suma_pedidos_cliente(codigo_cliente INT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
    DECLARE total_pedidos_cliente FLOAT DEFAULT 0.00;

    SELECT SUM(calcular_precio_total_pedido(p.codigo_pedido)) INTO total_pedidos_cliente
    FROM pedido p
    WHERE p.codigo_cliente = codigo_cliente;

    RETURN total_pedidos_cliente;
END //

DELIMITER ;

SELECT calcular_suma_pedidos_cliente(1);

/**
+----------------------------------+
| calcular_suma_pedidos_cliente(1) |
+----------------------------------+
|                            46956 |
+----------------------------------+
1 row in set (0,00 sec)
**/

-- Función calcular_suma_pagos_cliente


DELIMITER //
DROP FUNCTION IF EXISTS calcular_suma_pagos_cliente//

CREATE FUNCTION calcular_suma_pagos_cliente(codigo_cliente INT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
    DECLARE total_pagos_cliente FLOAT DEFAULT 0.00;

    SELECT SUM(total) INTO total_pagos_cliente
    FROM pago
    WHERE codigo_cliente = codigo_cliente;

    RETURN total_pagos_cliente;
END //

DELIMITER ;

SELECT calcular_suma_pagos_cliente(1);

/**
+--------------------------------+
| calcular_suma_pagos_cliente(1) |
+--------------------------------+
|                         197940 |
+--------------------------------+
1 row in set (0,00 sec)
**/

-- Procedimiento calcular_pagos_pendientes


DELIMITER //
DROP PROCEDURE IF EXISTS calcular_pagos_pendientes//
CREATE PROCEDURE calcular_pagos_pendientes()
BEGIN
    SELECT c.codigo_cliente,
           SUM(total) - COALESCE((SELECT SUM(pr.precio_venta * dp.cantidad)
                                  FROM detalle_pedido dp
                                  INNER JOIN producto pr ON dp.codigo_producto = pr.codigo_producto
                                  WHERE p.codigo_cliente = c.codigo_cliente), 0) AS pagos_pendientes
    FROM cliente c
    LEFT JOIN pago p ON c.codigo_cliente = p.codigo_cliente
    GROUP BY c.codigo_cliente;

END //

DELIMITER ;

CALL calcular_pagos_pendientes();

/**
+----------------+------------------+
| codigo_cliente | pagos_pendientes |
+----------------+------------------+
|              1 |       -271827.00 |
|              3 |       -264901.00 |
|              4 |       -193978.00 |
|              5 |       -252033.00 |
|              6 |             NULL |
|              7 |       -273437.00 |
|              8 |             NULL |
|              9 |       -274898.00 |
|             10 |             NULL |
|             11 |             NULL |
|             12 |             NULL |
|             13 |       -273581.00 |
|             14 |       -271667.00 |
|             15 |       -263746.00 |
|             16 |       -271428.00 |
|             17 |             NULL |
|             18 |             NULL |
|             19 |       -275595.00 |
|             20 |             NULL |
|             21 |             NULL |
|             22 |             NULL |
|             23 |       -275555.00 |
|             24 |             NULL |
|             25 |             NULL |
|             26 |       -256981.00 |
|             27 |       -264855.00 |
|             28 |       -267338.00 |
|             29 |             NULL |
|             30 |       -267964.00 |
|             31 |             NULL |
|             32 |             NULL |
|             33 |             NULL |
|             35 |       -272506.00 |
|             36 |             NULL |
|             37 |             NULL |
|             38 |       -274656.00 |
+----------------+------------------+
36 rows in set (0,10 sec)
**/

```

</div>