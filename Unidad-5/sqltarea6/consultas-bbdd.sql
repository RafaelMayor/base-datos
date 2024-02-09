-- Rafael Martín Mayor.
-- Obtener todos los clientes.
SELECT * FROM Clientes;
/**
┌────┬─────────────────┬───────────────────────────┐
│ id │     nombre      │           email           │
├────┼─────────────────┼───────────────────────────┤
│ 1  │ Juan Pérez      │ juan@example.com          │
│ 2  │ María Gómez     │ maria@example.com         │
│ 3  │ Carlos López    │ carlos@example.com        │
│ 4  │ Ana Rodríguez   │ ana@example.com           │
│ 5  │ Luisa Martínez  │ luisa@example.com         │
│ 6  │ Pedro Sánchez   │ pedro@example.com         │
│ 7  │ Laura García    │ laura@example.com         │
│ 8  │ Miguel Martín   │ miguel@example.com        │
│ 9  │ Elena González  │ elena@example.com         │
│ 10 │ David Torres    │ david@example.com         │
│ 11 │ Sofía Ruiz      │ sofia@example.com         │
│ 12 │ Javier López    │ javier@example.com        │
│ 13 │ Carmen Vargas   │ carmen@example.com        │
│ 14 │ Daniel Muñoz    │ daniel@example.com        │
│ 15 │ Isabel Serrano  │ isabel@example.com        │
│ 16 │ Alejandro Muñoz │ alejandro@example.com     │
│ 17 │ Raquel Herrera  │ raquel@example.com        │
│ 18 │ Francisco Mora  │ francisco@example.com     │
│ 19 │ Marina Díaz     │ marina@example.com        │
│ 20 │ Antonio Jiménez │ antonio@example.com       │
│ 21 │ Beatriz Romero  │ beatriz@example.com       │
│ 22 │ Carlos Gómez    │ carlos.gomez@example.com  │
│ 23 │ Clara Sánchez   │ clara.sanchez@example.com │
│ 24 │ Andrés Martínez │ andres@example.com        │
│ 25 │ Lucía Díaz      │ lucia@example.com         │
│ 26 │ Mario Serrano   │ mario@example.com         │
│ 27 │ Eva Torres      │ eva.torres@example.com    │
│ 28 │ Roberto Ruiz    │ roberto@example.com       │
│ 29 │ Celia García    │ celia@example.com         │
└────┴─────────────────┴───────────────────────────┘
**/


-- Obtener la cantidad total de productos en todos los pedidos
SELECT SUM(cantidad) AS total_productos FROM Pedidos;
/**
┌─────────────────┐
│ total_productos │
├─────────────────┤
│ 54              │
└─────────────────┘
**/


-- Obtener el precio promedio de los productos:
SELECT AVG(precio) AS precio_promedio FROM Productos;
/**
┌──────────────────┐
│ precio_promedio  │
├──────────────────┤
│ 188.294285714286 │
└──────────────────┘
**/


-- Obtener los clientes que tienen un email válido (contiene '@'):
SELECT * FROM Clientes WHERE email REGEXP '@';
/**
┌────┬─────────────────┬───────────────────────────┐
│ id │     nombre      │           email           │
├────┼─────────────────┼───────────────────────────┤
│ 1  │ Juan Pérez      │ juan@example.com          │
│ 2  │ María Gómez     │ maria@example.com         │
│ 3  │ Carlos López    │ carlos@example.com        │
│ 4  │ Ana Rodríguez   │ ana@example.com           │
│ 5  │ Luisa Martínez  │ luisa@example.com         │
│ 6  │ Pedro Sánchez   │ pedro@example.com         │
│ 7  │ Laura García    │ laura@example.com         │
│ 8  │ Miguel Martín   │ miguel@example.com        │
│ 9  │ Elena González  │ elena@example.com         │
│ 10 │ David Torres    │ david@example.com         │
│ 11 │ Sofía Ruiz      │ sofia@example.com         │
│ 12 │ Javier López    │ javier@example.com        │
│ 13 │ Carmen Vargas   │ carmen@example.com        │
│ 14 │ Daniel Muñoz    │ daniel@example.com        │
│ 15 │ Isabel Serrano  │ isabel@example.com        │
│ 16 │ Alejandro Muñoz │ alejandro@example.com     │
│ 17 │ Raquel Herrera  │ raquel@example.com        │
│ 18 │ Francisco Mora  │ francisco@example.com     │
│ 19 │ Marina Díaz     │ marina@example.com        │
│ 20 │ Antonio Jiménez │ antonio@example.com       │
│ 21 │ Beatriz Romero  │ beatriz@example.com       │
│ 22 │ Carlos Gómez    │ carlos.gomez@example.com  │
│ 23 │ Clara Sánchez   │ clara.sanchez@example.com │
│ 24 │ Andrés Martínez │ andres@example.com        │
│ 25 │ Lucía Díaz      │ lucia@example.com         │
│ 26 │ Mario Serrano   │ mario@example.com         │
│ 27 │ Eva Torres      │ eva.torres@example.com    │
│ 28 │ Roberto Ruiz    │ roberto@example.com       │
│ 29 │ Celia García    │ celia@example.com         │
└────┴─────────────────┴───────────────────────────┘
**/


-- Obtener el producto más caro.
SELECT nombre, precio FROM Productos ORDER BY precio DESC LIMIT 1;
/**
┌────────┬────────┐
│ nombre │ precio │
├────────┼────────┤
│ Laptop │ 1200.0 │
└────────┴────────┘
**/


-- Obtener los pedidos realizados en febrero de 2024.
SELECT * FROM Pedidos WHERE fecha_pedido REGEXP '2024-02';
/**
┌───────────┬────────────┬─────────────┬──────────┬──────────────┐
│ id_pedido │ id_cliente │ id_producto │ cantidad │ fecha_pedido │
├───────────┼────────────┼─────────────┼──────────┼──────────────┤
│ 1         │ 1          │ 1           │ 2        │ 2024-02-01   │
│ 2         │ 2          │ 2           │ 1        │ 2024-02-02   │
│ 3         │ 3          │ 3           │ 3        │ 2024-02-03   │
│ 4         │ 4          │ 4           │ 1        │ 2024-02-04   │
│ 5         │ 5          │ 5           │ 2        │ 2024-02-05   │
│ 6         │ 6          │ 6           │ 1        │ 2024-02-06   │
│ 7         │ 7          │ 7           │ 3        │ 2024-02-07   │
│ 8         │ 8          │ 8           │ 2        │ 2024-02-08   │
│ 9         │ 9          │ 9           │ 1        │ 2024-02-09   │
│ 10        │ 10         │ 10          │ 2        │ 2024-02-10   │
│ 11        │ 11         │ 11          │ 1        │ 2024-02-11   │
│ 12        │ 12         │ 12          │ 3        │ 2024-02-12   │
│ 13        │ 13         │ 13          │ 1        │ 2024-02-13   │
│ 14        │ 14         │ 14          │ 2        │ 2024-02-14   │
│ 15        │ 15         │ 15          │ 1        │ 2024-02-15   │
│ 16        │ 16         │ 16          │ 3        │ 2024-02-16   │
│ 17        │ 17         │ 17          │ 2        │ 2024-02-17   │
│ 18        │ 18         │ 18          │ 1        │ 2024-02-18   │
│ 19        │ 19         │ 19          │ 2        │ 2024-02-19   │
│ 20        │ 20         │ 20          │ 1        │ 2024-02-20   │
│ 21        │ 21         │ 21          │ 3        │ 2024-02-21   │
│ 22        │ 22         │ 22          │ 1        │ 2024-02-22   │
│ 23        │ 23         │ 23          │ 2        │ 2024-02-23   │
│ 24        │ 24         │ 24          │ 1        │ 2024-02-24   │
│ 25        │ 25         │ 25          │ 3        │ 2024-02-25   │
│ 26        │ 26         │ 26          │ 2        │ 2024-02-26   │
│ 27        │ 27         │ 27          │ 1        │ 2024-02-27   │
│ 28        │ 28         │ 28          │ 2        │ 2024-02-28   │
│ 29        │ 29         │ 29          │ 1        │ 2024-02-29   │
└───────────┴────────────┴─────────────┴──────────┴──────────────┘
**/


-- Obtener la cantidad total de productos en todos los pedidos por producto.
SELECT p.nombre, SUM(o.cantidad) AS total_productos FROM Pedidos o INNER JOIN Productos p ON o.id_producto = p.id GROUP BY p.nombre;
/**
┌───────────────────────────────────┬─────────────────┐
│              nombre               │ total_productos │
├───────────────────────────────────┼─────────────────┤
│ Adaptador HDMI                    │ 2               │
│ Altavoces Inalámbricos            │ 1               │
│ Auriculares Bluetooth             │ 2               │
│ Batería Externa                   │ 1               │
│ Cargador Inalámbrico              │ 3               │
│ Cámara Digital                    │ 3               │
│ Disco Duro Externo                │ 1               │
│ Estuche para Auriculares          │ 2               │
│ Funda para Laptop                 │ 1               │
│ Funda para Tablet                 │ 2               │
│ Hub USB                           │ 3               │
│ Impresora                         │ 1               │
│ Kit de Limpieza para Computadoras │ 1               │
│ Laptop                            │ 2               │
│ Lámpara LED                       │ 2               │
│ Mochila para Portátil             │ 2               │
│ Monitor LED                       │ 1               │
│ Ratón Óptico                      │ 3               │
│ Reloj Inteligente                 │ 2               │
│ Reproductor de Audio              │ 2               │
│ Router Wi-Fi                      │ 3               │
│ Smartphone                        │ 1               │
│ Soporte para Teléfono             │ 1               │
│ TV LED                            │ 3               │
│ Tablet                            │ 1               │
│ Tarjeta de Memoria                │ 1               │
│ Teclado Inalámbrico               │ 1               │
│ Webcam HD                         │ 2               │
└───────────────────────────────────┴─────────────────┘
**/


-- Obtener los clientes que han realizado más de un pedido.
SELECT c.nombre, COUNT(*) AS total_pedidos FROM Pedidos p INNER JOIN Clientes c ON p.id_cliente = c.id GROUP BY c.nombre HAVING COUNT(*) > 1;
/**
No devuelve nada porque ningún cliente ha realizado más de un pedido.
**/


-- Obtener los productos que tienen un precio registrado.
SELECT * FROM Productos WHERE precio IS NOT NULL;
/**
┌────┬───────────────────────────────────┬────────┐
│ id │              nombre               │ precio │
├────┼───────────────────────────────────┼────────┤
│ 1  │ Laptop                            │ 1200.0 │
│ 2  │ Smartphone                        │ 699.99 │
│ 3  │ TV LED                            │ 799.5  │
│ 4  │ Tablet                            │ 299.99 │
│ 5  │ Auriculares Bluetooth             │ 79.99  │
│ 6  │ Impresora                         │ 199.99 │
│ 7  │ Cámara Digital                    │ 499.99 │
│ 8  │ Reproductor de Audio              │ 149.99 │
│ 9  │ Altavoces Inalámbricos            │ 129.99 │
│ 10 │ Reloj Inteligente                 │ 249.99 │
│ 11 │ Teclado Inalámbrico               │ 59.99  │
│ 12 │ Ratón Óptico                      │ 29.99  │
│ 13 │ Monitor LED                       │ 349.99 │
│ 14 │ Mochila para Portátil             │ 49.99  │
│ 15 │ Disco Duro Externo                │ 89.99  │
│ 16 │ Router Wi-Fi                      │ 69.99  │
│ 17 │ Lámpara LED                       │ 39.99  │
│ 18 │ Batería Externa                   │ 19.99  │
│ 19 │ Estuche para Auriculares          │ 14.99  │
│ 20 │ Tarjeta de Memoria                │ 24.99  │
│ 21 │ Cargador Inalámbrico              │ 34.99  │
│ 22 │ Kit de Limpieza para Computadoras │ 9.99   │
│ 23 │ Funda para Tablet                 │ 19.99  │
│ 24 │ Soporte para Teléfono             │ 14.99  │
│ 25 │ Hub USB                           │ 29.99  │
│ 26 │ Webcam HD                         │ 59.99  │
│ 27 │ Funda para Laptop                 │ 29.99  │
│ 28 │ Adaptador HDMI                    │ 12.99  │
└────┴───────────────────────────────────┴────────┘
**/


-- Obtener la fecha del primer pedido realizado:
SELECT fecha_pedido FROM Pedidos ORDER BY fecha_pedido ASC LIMIT 1;
/**
┌──────────────┐
│ fecha_pedido │
├──────────────┤
│ 2024-02-01   │
└──────────────┘
**/


-- Obtener los productos cuyos nombres comienzan con 'A' o 'B':
SELECT nombre FROM Productos WHERE nombre REGEXP '^A|^B';
/**
┌────────────────────────┐
│         nombre         │
├────────────────────────┤
│ Auriculares Bluetooth  │
│ Altavoces Inalámbricos │
│ Batería Externa        │
│ Adaptador HDMI         │
└────────────────────────┘
**/


-- Obtener la cantidad total de productos en todos los pedidos por cliente ordenado por cliente.
SELECT c.nombre, SUM(o.cantidad) AS total_productos FROM Pedidos o INNER JOIN Clientes c ON o.id_cliente = c.id GROUP BY c.nombre ORDER BY c.nombre ASC;
/**
┌─────────────────┬─────────────────┐
│     nombre      │ total_productos │
├─────────────────┼─────────────────┤
│ Alejandro Muñoz │ 3               │
│ Ana Rodríguez   │ 1               │
│ Andrés Martínez │ 1               │
│ Antonio Jiménez │ 1               │
│ Beatriz Romero  │ 3               │
│ Carlos Gómez    │ 1               │
│ Carlos López    │ 3               │
│ Carmen Vargas   │ 1               │
│ Celia García    │ 1               │
│ Clara Sánchez   │ 2               │
│ Daniel Muñoz    │ 2               │
│ David Torres    │ 2               │
│ Elena González  │ 1               │
│ Eva Torres      │ 1               │
│ Francisco Mora  │ 1               │
│ Isabel Serrano  │ 1               │
│ Javier López    │ 3               │
│ Juan Pérez      │ 2               │
│ Laura García    │ 3               │
│ Lucía Díaz      │ 3               │
│ Luisa Martínez  │ 2               │
│ Marina Díaz     │ 2               │
│ Mario Serrano   │ 2               │
│ María Gómez     │ 1               │
│ Miguel Martín   │ 2               │
│ Pedro Sánchez   │ 1               │
│ Raquel Herrera  │ 2               │
│ Roberto Ruiz    │ 2               │
│ Sofía Ruiz      │ 1               │
└─────────────────┴─────────────────┘
**/


-- Obtener los clientes que han realizado más de un pedido en febrero de 2024.
SELECT c.nombre, COUNT(*) AS total_pedidos FROM Pedidos p INNER JOIN Clientes c ON p.id_cliente = c.id WHERE p.fecha_pedido REGEXP '2024-02' GROUP BY c.nombre HAVING COUNT(*) > 1;
/**
No devuelve nada porque ningún cliente ha realizado más de un pedido.
**/


-- Obtener los productos con precio entre 100 y 500.
SELECT * FROM Productos WHERE precio BETWEEN 100 AND 500;
/**
┌────┬────────────────────────┬────────┐
│ id │         nombre         │ precio │
├────┼────────────────────────┼────────┤
│ 4  │ Tablet                 │ 299.99 │
│ 6  │ Impresora              │ 199.99 │
│ 7  │ Cámara Digital         │ 499.99 │
│ 8  │ Reproductor de Audio   │ 149.99 │
│ 9  │ Altavoces Inalámbricos │ 129.99 │
│ 10 │ Reloj Inteligente      │ 249.99 │
│ 13 │ Monitor LED            │ 349.99 │
└────┴────────────────────────┴────────┘
**/


-- Obtener la cantidad total de productos en todos los pedidos por cliente ordenado por cantidad descendente.
SELECT c.nombre, SUM(o.cantidad) AS total_productos FROM Pedidos o INNER JOIN Clientes c ON o.id_cliente = c.id GROUP BY c.nombre ORDER BY SUM(o.cantidad) DESC;
/**
┌─────────────────┬─────────────────┐
│     nombre      │ total_productos │
├─────────────────┼─────────────────┤
│ Lucía Díaz      │ 3               │
│ Laura García    │ 3               │
│ Javier López    │ 3               │
│ Carlos López    │ 3               │
│ Beatriz Romero  │ 3               │
│ Alejandro Muñoz │ 3               │
│ Roberto Ruiz    │ 2               │
│ Raquel Herrera  │ 2               │
│ Miguel Martín   │ 2               │
│ Mario Serrano   │ 2               │
│ Marina Díaz     │ 2               │
│ Luisa Martínez  │ 2               │
│ Juan Pérez      │ 2               │
│ David Torres    │ 2               │
│ Daniel Muñoz    │ 2               │
│ Clara Sánchez   │ 2               │
│ Sofía Ruiz      │ 1               │
│ Pedro Sánchez   │ 1               │
│ María Gómez     │ 1               │
│ Isabel Serrano  │ 1               │
│ Francisco Mora  │ 1               │
│ Eva Torres      │ 1               │
│ Elena González  │ 1               │
│ Celia García    │ 1               │
│ Carmen Vargas   │ 1               │
│ Carlos Gómez    │ 1               │
│ Antonio Jiménez │ 1               │
│ Andrés Martínez │ 1               │
│ Ana Rodríguez   │ 1               │
└─────────────────┴─────────────────┘
**/


-- Obtener los clientes que tienen una 'a' en cualquier posición de su nombre.
SELECT nombre FROM Clientes WHERE nombre REGEXP 'a';
/**
┌─────────────────┐
│     nombre      │
├─────────────────┤
│ Juan Pérez      │
│ María Gómez     │
│ Carlos López    │
│ Ana Rodríguez   │
│ Luisa Martínez  │
│ Laura García    │
│ Miguel Martín   │
│ Elena González  │
│ David Torres    │
│ Sofía Ruiz      │
│ Javier López    │
│ Carmen Vargas   │
│ Daniel Muñoz    │
│ Isabel Serrano  │
│ Alejandro Muñoz │
│ Raquel Herrera  │
│ Francisco Mora  │
│ Marina Díaz     │
│ Beatriz Romero  │
│ Carlos Gómez    │
│ Clara Sánchez   │
│ Andrés Martínez │
│ Lucía Díaz      │
│ Mario Serrano   │
│ Eva Torres      │
│ Celia García    │
└─────────────────┘
**/


-- Obtener el precio máximo de los productos.
SELECT MAX(precio) AS precio_maximo FROM Productos;
/**
┌───────────────┐
│ precio_maximo │
├───────────────┤
│ 1200.0        │
└───────────────┘
**/


-- Obtener los pedidos realizados por el cliente con ID 1 en febrero de 2024.
SELECT * FROM Pedidos WHERE id_cliente = 1 AND fecha_pedido REGEXP '2024-02';
/**
┌───────────┬────────────┬─────────────┬──────────┬──────────────┐
│ id_pedido │ id_cliente │ id_producto │ cantidad │ fecha_pedido │
├───────────┼────────────┼─────────────┼──────────┼──────────────┤
│ 1         │ 1          │ 1           │ 2        │ 2024-02-01   │
└───────────┴────────────┴─────────────┴──────────┴──────────────┘
**/


-- Obtener la cantidad total de productos en todos los pedidos por producto ordenado por total de productos descendente.
SELECT p.nombre, SUM(o.cantidad) AS total_productos FROM Pedidos o INNER JOIN Productos p ON o.id_producto = p.id GROUP BY p.nombre ORDER BY SUM(o.cantidad) DESC;
/**
┌───────────────────────────────────┬─────────────────┐
│              nombre               │ total_productos │
├───────────────────────────────────┼─────────────────┤
│ TV LED                            │ 3               │
│ Router Wi-Fi                      │ 3               │
│ Ratón Óptico                      │ 3               │
│ Hub USB                           │ 3               │
│ Cámara Digital                    │ 3               │
│ Cargador Inalámbrico              │ 3               │
│ Webcam HD                         │ 2               │
│ Reproductor de Audio              │ 2               │
│ Reloj Inteligente                 │ 2               │
│ Mochila para Portátil             │ 2               │
│ Lámpara LED                       │ 2               │
│ Laptop                            │ 2               │
│ Funda para Tablet                 │ 2               │
│ Estuche para Auriculares          │ 2               │
│ Auriculares Bluetooth             │ 2               │
│ Adaptador HDMI                    │ 2               │
│ Teclado Inalámbrico               │ 1               │
│ Tarjeta de Memoria                │ 1               │
│ Tablet                            │ 1               │
│ Soporte para Teléfono             │ 1               │
│ Smartphone                        │ 1               │
│ Monitor LED                       │ 1               │
│ Kit de Limpieza para Computadoras │ 1               │
│ Impresora                         │ 1               │
│ Funda para Laptop                 │ 1               │
│ Disco Duro Externo                │ 1               │
│ Batería Externa                   │ 1               │
│ Altavoces Inalámbricos            │ 1               │
└───────────────────────────────────┴─────────────────┘
**/


-- Obtener los productos que no tienen un precio registrado.
SELECT * FROM Productos WHERE precio IS NULL;
/**
No devuelve nada porque todos los productos tienen un precio registrado.
**/


-- Obtener la fecha del último pedido realizado.
SELECT fecha_pedido FROM Pedidos ORDER BY fecha_pedido DESC LIMIT 1;
/**
┌──────────────┐
│ fecha_pedido │
├──────────────┤
│ 2024-03-01   │
└──────────────┘
**/


-- Obtener los clientes cuyo nombre tiene al menos 5 caracteres.
SELECT nombre FROM Clientes WHERE nombre REGEXP '.....';
/**
┌─────────────────┐
│     nombre      │
├─────────────────┤
│ Juan Pérez      │
│ María Gómez     │
│ Carlos López    │
│ Ana Rodríguez   │
│ Luisa Martínez  │
│ Pedro Sánchez   │
│ Laura García    │
│ Miguel Martín   │
│ Elena González  │
│ David Torres    │
│ Sofía Ruiz      │
│ Javier López    │
│ Carmen Vargas   │
│ Daniel Muñoz    │
│ Isabel Serrano  │
│ Alejandro Muñoz │
│ Raquel Herrera  │
│ Francisco Mora  │
│ Marina Díaz     │
│ Antonio Jiménez │
│ Beatriz Romero  │
│ Carlos Gómez    │
│ Clara Sánchez   │
│ Andrés Martínez │
│ Lucía Díaz      │
│ Mario Serrano   │
│ Eva Torres      │
│ Roberto Ruiz    │
│ Celia García    │
└─────────────────┘
**/


-- Obtener los productos que tienen la letra 'o' en cualquier posición del nombre.
SELECT nombre FROM Productos WHERE nombre REGEXP 'o';
/**
┌───────────────────────────────────┐
│              nombre               │
├───────────────────────────────────┤
│ Laptop                            │
│ Smartphone                        │
│ Auriculares Bluetooth             │
│ Impresora                         │
│ Reproductor de Audio              │
│ Altavoces Inalámbricos            │
│ Reloj Inteligente                 │
│ Teclado Inalámbrico               │
│ Ratón Óptico                      │
│ Monitor LED                       │
│ Mochila para Portátil             │
│ Disco Duro Externo                │
│ Router Wi-Fi                      │
│ Tarjeta de Memoria                │
│ Cargador Inalámbrico              │
│ Kit de Limpieza para Computadoras │
│ Soporte para Teléfono             │
│ Funda para Laptop                 │
│ Adaptador HDMI                    │
└───────────────────────────────────┘
**/


-- Obtener la cantidad total de productos en todos los pedidos por cliente ordenado por cliente.
SELECT c.nombre, SUM(p.cantidad) AS total_productos FROM Clientes c JOIN Pedidos p ON c.id = p.id_cliente JOIN Productos p ON p.id_producto = p.id_producto GROUP BY c.nombre ORDER BY total_productos DESC;
/**
┌─────────────────┬─────────────────┐
│     nombre      │ total_productos │
├─────────────────┼─────────────────┤
│ Lucía Díaz      │ 84              │
│ Laura García    │ 84              │
│ Javier López    │ 84              │
│ Carlos López    │ 84              │
│ Beatriz Romero  │ 84              │
│ Alejandro Muñoz │ 84              │
│ Roberto Ruiz    │ 56              │
│ Raquel Herrera  │ 56              │
│ Miguel Martín   │ 56              │
│ Mario Serrano   │ 56              │
│ Marina Díaz     │ 56              │
│ Luisa Martínez  │ 56              │
│ Juan Pérez      │ 56              │
│ David Torres    │ 56              │
│ Daniel Muñoz    │ 56              │
│ Clara Sánchez   │ 56              │
│ Sofía Ruiz      │ 28              │
│ Pedro Sánchez   │ 28              │
│ María Gómez     │ 28              │
│ Isabel Serrano  │ 28              │
│ Francisco Mora  │ 28              │
│ Eva Torres      │ 28              │
│ Elena González  │ 28              │
│ Celia García    │ 28              │
│ Carmen Vargas   │ 28              │
│ Carlos Gómez    │ 28              │
│ Antonio Jiménez │ 28              │
│ Andrés Martínez │ 28              │
│ Ana Rodríguez   │ 28              │
└─────────────────┴─────────────────┘
**/


-- Obtener los clientes cuyos nombres no contienen la letra 'i':
SELECT nombre FROM Clientes WHERE nombre NOT REGEXP 'i';
/**
┌─────────────────┐
│     nombre      │
├─────────────────┤
│ Juan Pérez      │
│ María Gómez     │
│ Carlos López    │
│ Ana Rodríguez   │
│ Pedro Sánchez   │
│ Laura García    │
│ Elena González  │
│ Carmen Vargas   │
│ Isabel Serrano  │
│ Alejandro Muñoz │
│ Raquel Herrera  │
│ Carlos Gómez    │
│ Clara Sánchez   │
│ Andrés Martínez │
│ Lucía Díaz      │
│ Eva Torres      │
└─────────────────┘
**/


-- Obtener los pedidos realizados por el cliente con ID 2 en febrero de 2024.
SELECT * FROM Pedidos WHERE id_cliente = 2 AND fecha_pedido REGEXP '2024-02';
/**
┌───────────┬────────────┬─────────────┬──────────┬──────────────┐
│ id_pedido │ id_cliente │ id_producto │ cantidad │ fecha_pedido │
├───────────┼────────────┼─────────────┼──────────┼──────────────┤
│ 2         │ 2          │ 2           │ 1        │ 2024-02-02   │
└───────────┴────────────┴─────────────┴──────────┴──────────────┘
**/


-- Obtener el precio mínimo de los productos.
SELECT MIN(precio) AS precio_minimo FROM Productos;
/**
┌───────────────┐
│ precio_minimo │
├───────────────┤
│ 9.99          │
└───────────────┘
**/


-- Obtener los clientes que han realizado al menos un pedido en febrero de 2024.
SELECT c.nombre, COUNT(*) AS total_pedidos FROM Pedidos p INNER JOIN Clientes c ON p.id_cliente = c.id WHERE p.fecha_pedido REGEXP '2024-02' GROUP BY c.nombre HAVING COUNT(*) >= 1;
/**
┌─────────────────┬───────────────┐
│     nombre      │ total_pedidos │
├─────────────────┼───────────────┤
│ Alejandro Muñoz │ 1             │
│ Ana Rodríguez   │ 1             │
│ Andrés Martínez │ 1             │
│ Antonio Jiménez │ 1             │
│ Beatriz Romero  │ 1             │
│ Carlos Gómez    │ 1             │
│ Carlos López    │ 1             │
│ Carmen Vargas   │ 1             │
│ Celia García    │ 1             │
│ Clara Sánchez   │ 1             │
│ Daniel Muñoz    │ 1             │
│ David Torres    │ 1             │
│ Elena González  │ 1             │
│ Eva Torres      │ 1             │
│ Francisco Mora  │ 1             │
│ Isabel Serrano  │ 1             │
│ Javier López    │ 1             │
│ Juan Pérez      │ 1             │
│ Laura García    │ 1             │
│ Lucía Díaz      │ 1             │
│ Luisa Martínez  │ 1             │
│ Marina Díaz     │ 1             │
│ Mario Serrano   │ 1             │
│ María Gómez     │ 1             │
│ Miguel Martín   │ 1             │
│ Pedro Sánchez   │ 1             │
│ Raquel Herrera  │ 1             │
│ Roberto Ruiz    │ 1             │
│ Sofía Ruiz      │ 1             │
└─────────────────┴───────────────┘
**/


-- Obtener la fecha del último pedido realizado por el cliente con ID 3.
SELECT fecha_pedido FROM Pedidos WHERE id_cliente = 3 ORDER BY fecha_pedido DESC LIMIT 1;
/**
┌──────────────┐
│ fecha_pedido │
├──────────────┤
│ 2024-02-03   │
└──────────────┘
**/


-- Obtener los productos que tienen una 'a' al final del nombre.
SELECT * FROM Productos WHERE nombre REGEXP 'a$';
/**
┌────┬────────────────────┬────────┐
│ id │       nombre       │ precio │
├────┼────────────────────┼────────┤
│ 6  │ Impresora          │ 199.99 │
│ 18 │ Batería Externa    │ 19.99  │
│ 20 │ Tarjeta de Memoria │ 24.99  │
└────┴────────────────────┴────────┘
**/


-- Obtener los clientes cuyos nombres tienen al menos 4 vocales (mayúsculas|minúsculas).
SELECT nombre FROM Clientes WHERE nombre REGEXP '[AEIOUaeiou]{4,}';
/**
No devuelve nada porque ningún cliente tiene al menos 4 vocales.
**/


-- Obtener los productos cuyo precio tenga al menos 4 números sin contar los decimales.
SELECT * FROM Productos WHERE LENGTH(CAST(precio AS INTEGER)) >= 4;
/**
┌────┬────────┬────────┐
│ id │ nombre │ precio │
├────┼────────┼────────┤
│ 1  │ Laptop │ 1200.0 │
└────┴────────┴────────┘
**/


-- Obtener los clientes cuyos nombres tienen al menos una 'a' seguida de una 'e'.
SELECT nombre FROM Clientes WHERE nombre REGEXP 'ae{1,}';
/**
No devuelve nada porque ningún cliente tiene al menos una 'a' seguida de una 'e'.
**/


-- Obtener los productos cuyos nombres terminan con una consonante.
SELECT nombre FROM Productos WHERE nombre REGEXP '[BCDFGHJKLMNÑPQRSTVWXYZbcdfghjklmnñpqrstvwxyz]$';
/**
┌───────────────────────────────────┐
│              nombre               │
├───────────────────────────────────┤
│ Laptop                            │
│ TV LED                            │
│ Tablet                            │
│ Auriculares Bluetooth             │
│ Cámara Digital                    │
│ Altavoces Inalámbricos            │
│ Monitor LED                       │
│ Mochila para Portátil             │
│ Lámpara LED                       │
│ Estuche para Auriculares          │
│ Kit de Limpieza para Computadoras │
│ Funda para Tablet                 │
│ Hub USB                           │
│ Webcam HD                         │
│ Funda para Laptop                 │
└───────────────────────────────────┘
**/


-- Obtener los productos cuyos nombres empiezan con una vocal.
SELECT nombre FROM Productos WHERE nombre REGEXP '^[AEIOUaeiou]';
/**
┌──────────────────────────┐
│          nombre          │
├──────────────────────────┤
│ Auriculares Bluetooth    │
│ Impresora                │
│ Altavoces Inalámbricos   │
│ Estuche para Auriculares │
│ Adaptador HDMI           │
└──────────────────────────┘
**/
