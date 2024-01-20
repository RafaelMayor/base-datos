<div align="justify">

<div align="right">
Rafael Martín Mayor.
</div>

# Tarea 4 SQLite

# Trabajo con funciones en BBDD:

## Objetivo:

*Practicar la creación y manipulación de una base de datos SQLite3 desde la línea de comandos.*

### **Paso 1: Creación de la BBDD.**

Crear con el siguiente contenido el fichero supermercado-db.sql :

```sql
CREATE TABLE productos (
    id INTEGER PRIMARY KEY,
    nombre TEXT,
    categoria TEXT,
    precio REAL
);

CREATE TABLE ventas (
    id INTEGER PRIMARY KEY,
    id_producto INTEGER,
    cantidad INTEGER,
    fecha DATE,
    FOREIGN KEY (id_producto) REFERENCES productos(id)
);

INSERT INTO productos (id, nombre, categoria, precio) VALUES 
    (1, 'Arroz', 'Alimentos', 2.5),
    (2, 'Leche', 'Lácteos', 1.8),
    (3, 'Pan', 'Panadería', 1.2),
    (4, 'Manzanas', 'Frutas', 3.0),
    (5, 'Pollo', 'Carnes', 5.5),
    (6, 'Huevos', 'Lácteos', 1.0),
    (7, 'Yogurt', 'Lácteos', 2.0),
    (8, 'Tomates', 'Verduras', 2.2),
    (9, 'Queso', 'Lácteos', 4.0),
    (10, 'Cereal', 'Desayuno', 3.5),
    (11, 'Papel Higiénico', 'Hogar', 1.5),
    (12, 'Cepillo de Dientes', 'Higiene', 2.0),
    (13, 'Detergente', 'Limpieza', 2.8),
    (14, 'Galletas', 'Snacks', 1.7),
    (15, 'Aceite de Oliva', 'Cocina', 4.5),
    (16, 'Café', 'Bebidas', 5.0),
    (17, 'Sopa enlatada', 'Conservas', 2.3),
    (18, 'Jabón de Baño', 'Higiene', 1.2),
    (19, 'Botellas de Agua', 'Bebidas', 1.0),
    (20, 'Cerveza', 'Bebidas', 3.8);

INSERT INTO ventas (id_producto, cantidad, fecha) VALUES 
    (1, 5, '2024-01-17'),
    (2, 3, '2024-01-17'),
    (4, 2, '2024-01-17'),
    (5, 1, '2024-01-17'),
    (6, 10, '2024-01-18'),
    (8, 4, '2024-01-18'),
    (10, 2, '2024-01-18'),
    (14, 7, '2024-01-19'),
    (16, 3, '2024-01-19'),
    (18, 6, '2024-01-20');
```

### **Paso 2: Lectura del fichero sql.**

Entra en sqlite a través del siguiente comando:

```sql
sqlite3 tarea4.db
```

Haciendo un .read del fichero sql, de nombre supermercado-db.sql, realiza la creación e inserción de información de la BBDD.

```sql
.read supermercado-db.sql
```

### **Paso 3: Responde a las siguientes cuestiones.**

- Realiza el diagrama __ER__ de la __BBDD__ supermercado.

![](https://raw.githubusercontent.com/RafaelMayor/base-datos/main/sqltarea4/Diagrama%20ER%20Tarea%204%20SQLite.drawio.png)

- Realiza el diagrama __MR__ de la __BBDD__ supermercado.

![](https://raw.githubusercontent.com/RafaelMayor/base-datos/main/sqltarea4/Diagrama%20MR%20Tarea%204%20SQLite.drawio.png)

- Indica si la BBDD esta __normalizada__ hasta la 3ª forma normal, justificando la respuesta.
Sí, está normalizada. Todos los valores son atómicos, todo ronda en torno a la clave primaria y no existen dependencias transitivas.

### **Paso 4: Responde a las siguientes cuestiones.**

Realiza las siguientes consultas, y muestra el resultado obtenido:

- Mostrar todos los productos de la categoría "Bebidas".

```sql
SELECT * FROM productos WHERE categoria = 'Bebidas';

┌────┬──────────────────┬───────────┬────────┐
│ id │      nombre      │ categoria │ precio │
├────┼──────────────────┼───────────┼────────┤
│ 16 │ Café             │ Bebidas   │ 5.0    │
│ 19 │ Botellas de Agua │ Bebidas   │ 1.0    │
│ 20 │ Cerveza          │ Bebidas   │ 3.8    │
└────┴──────────────────┴───────────┴────────┘
```

- Listar los productos ordenados por precio de forma descendente.

```sql
SELECT * FROM productos ORDER BY precio DESC;

┌────┬────────────────────┬───────────┬────────┐
│ id │       nombre       │ categoria │ precio │
├────┼────────────────────┼───────────┼────────┤
│ 5  │ Pollo              │ Carnes    │ 5.5    │
│ 16 │ Café               │ Bebidas   │ 5.0    │
│ 15 │ Aceite de Oliva    │ Cocina    │ 4.5    │
│ 9  │ Queso              │ Lácteos   │ 4.0    │
│ 20 │ Cerveza            │ Bebidas   │ 3.8    │
│ 10 │ Cereal             │ Desayuno  │ 3.5    │
│ 4  │ Manzanas           │ Frutas    │ 3.0    │
│ 13 │ Detergente         │ Limpieza  │ 2.8    │
│ 1  │ Arroz              │ Alimentos │ 2.5    │
│ 17 │ Sopa enlatada      │ Conservas │ 2.3    │
│ 8  │ Tomates            │ Verduras  │ 2.2    │
│ 7  │ Yogurt             │ Lácteos   │ 2.0    │
│ 12 │ Cepillo de Dientes │ Higiene   │ 2.0    │
│ 2  │ Leche              │ Lácteos   │ 1.8    │
│ 14 │ Galletas           │ Snacks    │ 1.7    │
│ 11 │ Papel Higiénico    │ Hogar     │ 1.5    │
│ 3  │ Pan                │ Panadería │ 1.2    │
│ 18 │ Jabón de Baño      │ Higiene   │ 1.2    │
│ 6  │ Huevos             │ Lácteos   │ 1.0    │
│ 19 │ Botellas de Agua   │ Bebidas   │ 1.0    │
└────┴────────────────────┴───────────┴────────┘
```

- Calcular el precio total de todos los productos en la tabla "productos".

```sql
SELECT SUM(precio) FROM productos;

┌─────────────┐
│ SUM(precio) │
├─────────────┤
│ 52.5        │
└─────────────┘
```

- Encontrar los productos con un nombre que contenga la letra 'a'.

```sql
SELECT * FROM productos WHERE nombre LIKE '%a%';

┌────┬──────────────────┬───────────┬────────┐
│ id │      nombre      │ categoria │ precio │
├────┼──────────────────┼───────────┼────────┤
│ 1  │ Arroz            │ Alimentos │ 2.5    │
│ 3  │ Pan              │ Panadería │ 1.2    │
│ 4  │ Manzanas         │ Frutas    │ 3.0    │
│ 8  │ Tomates          │ Verduras  │ 2.2    │
│ 10 │ Cereal           │ Desayuno  │ 3.5    │
│ 11 │ Papel Higiénico  │ Hogar     │ 1.5    │
│ 14 │ Galletas         │ Snacks    │ 1.7    │
│ 15 │ Aceite de Oliva  │ Cocina    │ 4.5    │
│ 16 │ Café             │ Bebidas   │ 5.0    │
│ 17 │ Sopa enlatada    │ Conservas │ 2.3    │
│ 18 │ Jabón de Baño    │ Higiene   │ 1.2    │
│ 19 │ Botellas de Agua │ Bebidas   │ 1.0    │
│ 20 │ Cerveza          │ Bebidas   │ 3.8    │
└────┴──────────────────┴───────────┴────────┘
```


- Obtener la cantidad total de productos vendidos en todas las fechas.

```sql
SELECT SUM(cantidad) AS total_prod_vendidos FROM ventas;

┌─────────────────────┐
│ total_prod_vendidos │
├─────────────────────┤
│ 43                  │
└─────────────────────┘
```


- Encontrar el producto más caro en cada categoría.

```sql
SELECT categoria, nombre, precio FROM productos WHERE (categoria, precio) IN (SELECT categoria, MAX(precio) FROM productos GROUP BY categoria);

┌───────────┬────────────────────┬────────┐
│ categoria │       nombre       │ precio │
├───────────┼────────────────────┼────────┤
│ Alimentos │ Arroz              │ 2.5    │
│ Panadería │ Pan                │ 1.2    │
│ Frutas    │ Manzanas           │ 3.0    │
│ Carnes    │ Pollo              │ 5.5    │
│ Verduras  │ Tomates            │ 2.2    │
│ Lácteos   │ Queso              │ 4.0    │
│ Desayuno  │ Cereal             │ 3.5    │
│ Hogar     │ Papel Higiénico    │ 1.5    │
│ Higiene   │ Cepillo de Dientes │ 2.0    │
│ Limpieza  │ Detergente         │ 2.8    │
│ Snacks    │ Galletas           │ 1.7    │
│ Cocina    │ Aceite de Oliva    │ 4.5    │
│ Bebidas   │ Café               │ 5.0    │
│ Conservas │ Sopa enlatada      │ 2.3    │
└───────────┴────────────────────┴────────┘
```


- Listar los productos que no han sido vendidos.

```sql
SELECT * FROM productos WHERE id NOT IN (SELECT id_producto FROM ventas);

┌────┬────────────────────┬───────────┬────────┐
│ id │       nombre       │ categoria │ precio │
├────┼────────────────────┼───────────┼────────┤
│ 3  │ Pan                │ Panadería │ 1.2    │
│ 7  │ Yogurt             │ Lácteos   │ 2.0    │
│ 9  │ Queso              │ Lácteos   │ 4.0    │
│ 11 │ Papel Higiénico    │ Hogar     │ 1.5    │
│ 12 │ Cepillo de Dientes │ Higiene   │ 2.0    │
│ 13 │ Detergente         │ Limpieza  │ 2.8    │
│ 15 │ Aceite de Oliva    │ Cocina    │ 4.5    │
│ 17 │ Sopa enlatada      │ Conservas │ 2.3    │
│ 19 │ Botellas de Agua   │ Bebidas   │ 1.0    │
│ 20 │ Cerveza            │ Bebidas   │ 3.8    │
└────┴────────────────────┴───────────┴────────┘
```


- Calcular el precio promedio de los productos en la categoría "Snacks".

```sql
SELECT AVG(precio) AS precio_promedio FROM productos WHERE categoria = 'Snacks';

┌─────────────────┐
│ precio_promedio │
├─────────────────┤
│ 1.7             │
└─────────────────┘
```


- Encontrar los productos que han sido vendidos más de 5 veces.

```sql
SELECT productos.nombre, SUM(ventas.cantidad) AS total_ventas FROM productos INNER JOIN ventas ON productos.id = ventas.id_producto GROUP BY productos.id HAVING SUM(ventas.cantidad) > 5;

┌───────────────┬──────────────┐
│    nombre     │ total_ventas │
├───────────────┼──────────────┤
│ Huevos        │ 10           │
│ Galletas      │ 7            │
│ Jabón de Baño │ 6            │
└───────────────┴──────────────┘
```


- Mostrar la fecha y la cantidad de ventas para cada producto.

```sql
SELECT fecha, SUM(cantidad) AS cantidad_ventas FROM ventas GROUP BY id_producto, fecha;

┌────────────┬─────────────────┐
│   fecha    │ cantidad_ventas │
├────────────┼─────────────────┤
│ 2024-01-17 │ 5               │
│ 2024-01-17 │ 3               │
│ 2024-01-17 │ 2               │
│ 2024-01-17 │ 1               │
│ 2024-01-18 │ 10              │
│ 2024-01-18 │ 4               │
│ 2024-01-18 │ 2               │
│ 2024-01-19 │ 7               │
│ 2024-01-19 │ 3               │
│ 2024-01-20 │ 6               │
└────────────┴─────────────────┘
```


- Encontrar los productos que tienen un precio menor o igual a 2.

```sql
SELECT * FROM productos WHERE precio <= 2;

┌────┬────────────────────┬───────────┬────────┐
│ id │       nombre       │ categoria │ precio │
├────┼────────────────────┼───────────┼────────┤
│ 2  │ Leche              │ Lácteos   │ 1.8    │
│ 3  │ Pan                │ Panadería │ 1.2    │
│ 6  │ Huevos             │ Lácteos   │ 1.0    │
│ 7  │ Yogurt             │ Lácteos   │ 2.0    │
│ 11 │ Papel Higiénico    │ Hogar     │ 1.5    │
│ 12 │ Cepillo de Dientes │ Higiene   │ 2.0    │
│ 14 │ Galletas           │ Snacks    │ 1.7    │
│ 18 │ Jabón de Baño      │ Higiene   │ 1.2    │
│ 19 │ Botellas de Agua   │ Bebidas   │ 1.0    │
└────┴────────────────────┴───────────┴────────┘
```


- Calcular la cantidad total de ventas para cada fecha.

```sql
SELECT fecha, SUM(cantidad) AS total_ventas FROM ventas GROUP BY fecha;

┌────────────┬──────────────┐
│   fecha    │ total_ventas │
├────────────┼──────────────┤
│ 2024-01-17 │ 11           │
│ 2024-01-18 │ 16           │
│ 2024-01-19 │ 10           │
│ 2024-01-20 │ 6            │
└────────────┴──────────────┘
```


- Listar los productos cuyo nombre comienza con la letra 'P'.

```sql
SELECT * FROM productos WHERE nombre LIKE 'P%';

┌────┬─────────────────┬───────────┬────────┐
│ id │     nombre      │ categoria │ precio │
├────┼─────────────────┼───────────┼────────┤
│ 3  │ Pan             │ Panadería │ 1.2    │
│ 5  │ Pollo           │ Carnes    │ 5.5    │
│ 11 │ Papel Higiénico │ Hogar     │ 1.5    │
└────┴─────────────────┴───────────┴────────┘
```


- Obtener el producto más vendido en términos de cantidad.

```sql
SELECT productos.nombre, SUM(ventas.cantidad) AS total_ventas FROM productos INNER JOIN ventas ON productos.id = ventas.id_producto GROUP BY productos.id ORDER BY total_ventas DESC LIMIT 1;

┌────────┬──────────────┐
│ nombre │ total_ventas │
├────────┼──────────────┤
│ Huevos │ 10           │
└────────┴──────────────┘
```


- Mostrar los productos que fueron vendidos en la fecha '__2024-01-18__'.

```sql
SELECT ventas.fecha, productos.nombre, ventas.cantidad FROM productos INNER JOIN ventas ON productos.id = ventas.id_producto WHERE ventas.fecha = '2024-01-18';

┌────────────┬─────────┬──────────┐
│   fecha    │ nombre  │ cantidad │
├────────────┼─────────┼──────────┤
│ 2024-01-18 │ Huevos  │ 10       │
│ 2024-01-18 │ Tomates │ 4        │
│ 2024-01-18 │ Cereal  │ 2        │
└────────────┴─────────┴──────────┘
```


- Calcular el total de ventas para cada producto.

```sql
SELECT productos.nombre, SUM(ventas.cantidad) AS total_ventas FROM productos INNER JOIN ventas ON productos.id = ventas.id_producto GROUP BY productos.id;

┌───────────────┬──────────────┐
│    nombre     │ total_ventas │
├───────────────┼──────────────┤
│ Arroz         │ 5            │
│ Leche         │ 3            │
│ Manzanas      │ 2            │
│ Pollo         │ 1            │
│ Huevos        │ 10           │
│ Tomates       │ 4            │
│ Cereal        │ 2            │
│ Galletas      │ 7            │
│ Café          │ 3            │
│ Jabón de Baño │ 6            │
└───────────────┴──────────────┘
```


- Encontrar los productos con un precio entre 3 y 4.

```sql
SELECT * FROM productos WHERE precio BETWEEN 3 AND 4;

┌────┬──────────┬───────────┬────────┐
│ id │  nombre  │ categoria │ precio │
├────┼──────────┼───────────┼────────┤
│ 4  │ Manzanas │ Frutas    │ 3.0    │
│ 9  │ Queso    │ Lácteos   │ 4.0    │
│ 10 │ Cereal   │ Desayuno  │ 3.5    │
│ 20 │ Cerveza  │ Bebidas   │ 3.8    │
└────┴──────────┴───────────┴────────┘
```


- Listar los productos y sus categorías ordenados alfabéticamente por categoría.

```sql
SELECT * FROM productos ORDER BY categoria ASC;

┌────┬────────────────────┬───────────┬────────┐
│ id │       nombre       │ categoria │ precio │
├────┼────────────────────┼───────────┼────────┤
│ 1  │ Arroz              │ Alimentos │ 2.5    │
│ 16 │ Café               │ Bebidas   │ 5.0    │
│ 19 │ Botellas de Agua   │ Bebidas   │ 1.0    │
│ 20 │ Cerveza            │ Bebidas   │ 3.8    │
│ 5  │ Pollo              │ Carnes    │ 5.5    │
│ 15 │ Aceite de Oliva    │ Cocina    │ 4.5    │
│ 17 │ Sopa enlatada      │ Conservas │ 2.3    │
│ 10 │ Cereal             │ Desayuno  │ 3.5    │
│ 4  │ Manzanas           │ Frutas    │ 3.0    │
│ 12 │ Cepillo de Dientes │ Higiene   │ 2.0    │
│ 18 │ Jabón de Baño      │ Higiene   │ 1.2    │
│ 11 │ Papel Higiénico    │ Hogar     │ 1.5    │
│ 13 │ Detergente         │ Limpieza  │ 2.8    │
│ 2  │ Leche              │ Lácteos   │ 1.8    │
│ 6  │ Huevos             │ Lácteos   │ 1.0    │
│ 7  │ Yogurt             │ Lácteos   │ 2.0    │
│ 9  │ Queso              │ Lácteos   │ 4.0    │
│ 3  │ Pan                │ Panadería │ 1.2    │
│ 14 │ Galletas           │ Snacks    │ 1.7    │
│ 8  │ Tomates            │ Verduras  │ 2.2    │
└────┴────────────────────┴───────────┴────────┘
```


- Calcular el precio total de los productos vendidos en la fecha '2024-01-19'.

```sql
SELECT ventas.fecha, SUM(productos.precio * ventas.cantidad) AS precio_total_productos_vendidos FROM productos INNER JOIN ventas ON productos.id = ventas.id_producto WHERE ventas.fecha = '2024-01-19';

┌────────────┬─────────────────────────────────┐
│   fecha    │ precio_total_productos_vendidos │
├────────────┼─────────────────────────────────┤
│ 2024-01-19 │ 26.9                            │
└────────────┴─────────────────────────────────┘
```


- Mostrar los productos que no pertenecen a la categoría "__Higiene__".

```sql
SELECT * FROM productos WHERE categoria != 'Higiene';

┌────┬──────────────────┬───────────┬────────┐
│ id │      nombre      │ categoria │ precio │
├────┼──────────────────┼───────────┼────────┤
│ 1  │ Arroz            │ Alimentos │ 2.5    │
│ 2  │ Leche            │ Lácteos   │ 1.8    │
│ 3  │ Pan              │ Panadería │ 1.2    │
│ 4  │ Manzanas         │ Frutas    │ 3.0    │
│ 5  │ Pollo            │ Carnes    │ 5.5    │
│ 6  │ Huevos           │ Lácteos   │ 1.0    │
│ 7  │ Yogurt           │ Lácteos   │ 2.0    │
│ 8  │ Tomates          │ Verduras  │ 2.2    │
│ 9  │ Queso            │ Lácteos   │ 4.0    │
│ 10 │ Cereal           │ Desayuno  │ 3.5    │
│ 11 │ Papel Higiénico  │ Hogar     │ 1.5    │
│ 13 │ Detergente       │ Limpieza  │ 2.8    │
│ 14 │ Galletas         │ Snacks    │ 1.7    │
│ 15 │ Aceite de Oliva  │ Cocina    │ 4.5    │
│ 16 │ Café             │ Bebidas   │ 5.0    │
│ 17 │ Sopa enlatada    │ Conservas │ 2.3    │
│ 19 │ Botellas de Agua │ Bebidas   │ 1.0    │
│ 20 │ Cerveza          │ Bebidas   │ 3.8    │
└────┴──────────────────┴───────────┴────────┘
```


- Encontrar la cantidad total de productos en cada categoría.

```sql
SELECT categoria, COUNT(*) AS cantidad FROM productos GROUP BY categoria;

┌───────────┬──────────┐
│ categoria │ cantidad │
├───────────┼──────────┤
│ Alimentos │ 1        │
│ Bebidas   │ 3        │
│ Carnes    │ 1        │
│ Cocina    │ 1        │
│ Conservas │ 1        │
│ Desayuno  │ 1        │
│ Frutas    │ 1        │
│ Higiene   │ 2        │
│ Hogar     │ 1        │
│ Limpieza  │ 1        │
│ Lácteos   │ 4        │
│ Panadería │ 1        │
│ Snacks    │ 1        │
│ Verduras  │ 1        │
└───────────┴──────────┘
```


- Listar los productos que tienen un precio igual a la media de precios.

```sql
SELECT * FROM productos WHERE precio = (SELECT AVG(precio) FROM productos);
```
> No devuelve nada porque no hay ningún producto que tenga el mismo precio que la media de precios (2.625).

- Calcular el precio total de los productos vendidos en cada fecha.

```sql
SELECT fecha, SUM(productos.precio * ventas.cantidad) AS total_productos_vendidos FROM productos INNER JOIN ventas ON productos.id = ventas.id_producto GROUP BY fecha;

┌────────────┬──────────────────────────┐
│   fecha    │ total_productos_vendidos │
├────────────┼──────────────────────────┤
│ 2024-01-17 │ 29.4                     │
│ 2024-01-18 │ 25.8                     │
│ 2024-01-19 │ 26.9                     │
│ 2024-01-20 │ 7.2                      │
└────────────┴──────────────────────────┘
```


- Mostrar los productos con un nombre que termina con la letra 'o'.

```sql
SELECT * FROM productos WHERE nombre LIKE '%o';

┌────┬─────────────────┬───────────┬────────┐
│ id │     nombre      │ categoria │ precio │
├────┼─────────────────┼───────────┼────────┤
│ 5  │ Pollo           │ Carnes    │ 5.5    │
│ 9  │ Queso           │ Lácteos   │ 4.0    │
│ 11 │ Papel Higiénico │ Hogar     │ 1.5    │
│ 18 │ Jabón de Baño   │ Higiene   │ 1.2    │
└────┴─────────────────┴───────────┴────────┘
```


- Encontrar los productos que han sido vendidos en más de una fecha.

```sql
SELECT productos.nombre FROM productos INNER JOIN ventas ON productos.id = ventas.id_producto GROUP BY productos.id HAVING COUNT(DISTINCT ventas.fecha) > 1;
```
> No devuelve nada porque no hay ningún producto que haya sido vendido en más de una fecha.

- Listar los productos cuya categoría comienza con la letra 'L'.

```sql
SELECT * FROM productos WHERE categoria LIKE 'L%';

┌────┬────────────┬───────────┬────────┐
│ id │   nombre   │ categoria │ precio │
├────┼────────────┼───────────┼────────┤
│ 2  │ Leche      │ Lácteos   │ 1.8    │
│ 6  │ Huevos     │ Lácteos   │ 1.0    │
│ 7  │ Yogurt     │ Lácteos   │ 2.0    │
│ 9  │ Queso      │ Lácteos   │ 4.0    │
│ 13 │ Detergente │ Limpieza  │ 2.8    │
└────┴────────────┴───────────┴────────┘
```


- Calcular el total de ventas para cada producto en la fecha '2024-01-17'.

```sql
SELECT ventas.fecha, productos.nombre, SUM(ventas.cantidad) AS total_ventas FROM productos INNER JOIN ventas ON productos.id = ventas.id_producto WHERE ventas.fecha = '2024-01-17' GROUP BY productos.id;

┌────────────┬──────────┬──────────────┐
│   fecha    │  nombre  │ total_ventas │
├────────────┼──────────┼──────────────┤
│ 2024-01-17 │ Arroz    │ 5            │
│ 2024-01-17 │ Leche    │ 3            │
│ 2024-01-17 │ Manzanas │ 2            │
│ 2024-01-17 │ Pollo    │ 1            │
└────────────┴──────────┴──────────────┘
```


- Mostrar los productos cuyo nombre tiene al menos 5 caracteres.

```sql
SELECT * FROM productos WHERE LENGTH(nombre) >= 5;

┌────┬────────────────────┬───────────┬────────┐
│ id │       nombre       │ categoria │ precio │
├────┼────────────────────┼───────────┼────────┤
│ 1  │ Arroz              │ Alimentos │ 2.5    │
│ 2  │ Leche              │ Lácteos   │ 1.8    │
│ 4  │ Manzanas           │ Frutas    │ 3.0    │
│ 5  │ Pollo              │ Carnes    │ 5.5    │
│ 6  │ Huevos             │ Lácteos   │ 1.0    │
│ 7  │ Yogurt             │ Lácteos   │ 2.0    │
│ 8  │ Tomates            │ Verduras  │ 2.2    │
│ 9  │ Queso              │ Lácteos   │ 4.0    │
│ 10 │ Cereal             │ Desayuno  │ 3.5    │
│ 11 │ Papel Higiénico    │ Hogar     │ 1.5    │
│ 12 │ Cepillo de Dientes │ Higiene   │ 2.0    │
│ 13 │ Detergente         │ Limpieza  │ 2.8    │
│ 14 │ Galletas           │ Snacks    │ 1.7    │
│ 15 │ Aceite de Oliva    │ Cocina    │ 4.5    │
│ 17 │ Sopa enlatada      │ Conservas │ 2.3    │
│ 18 │ Jabón de Baño      │ Higiene   │ 1.2    │
│ 19 │ Botellas de Agua   │ Bebidas   │ 1.0    │
│ 20 │ Cerveza            │ Bebidas   │ 3.8    │
└────┴────────────────────┴───────────┴────────┘
```


- Encontrar los productos que tienen un precio superior al precio máximo en la tabla "__productos__".

```sql
SELECT * FROM productos WHERE precio > (SELECT MAX(precio) FROM productos);
```

> No devuelve nada porque no hay ningún producto que tenga un precio superior al precio máximo.

</div>