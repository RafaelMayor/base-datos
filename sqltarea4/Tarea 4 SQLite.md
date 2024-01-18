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
- Realiza el diagrama __MR__ de la __BBDD__ supermercado.
- Indica si la BBDD esta __normalizada__ hasta la 3ª forma normal, justificando la respuesta.

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
SELECT * FROM productos WHERE id NOT IN (SELECT producto_id FROM ventas);
```


- Calcular el precio promedio de los productos en la categoría "Snacks".

```sql
SELECT AVG(precio) FROM productos WHERE categoria = 'Snacks';
```


- Encontrar los productos que han sido vendidos más de 5 veces.

```sql
SELECT productos.nombre, SUM(ventas.cantidad) AS total_ventas FROM productos INNER JOIN ventas ON productos.id = ventas.producto_id GROUP BY productos.id HAVING SUM(ventas.cantidad) > 5;
```


- Mostrar la fecha y la cantidad de ventas para cada producto.

```sql
SELECT fecha, SUM(cantidad) FROM ventas GROUP BY producto_id, fecha;
```


- Encontrar los productos que tienen un precio menor o igual a 2.

```sql
SELECT * FROM productos WHERE precio <= 2;
```


- Calcular la cantidad total de ventas para cada fecha.

```sql
SELECT fecha, SUM(cantidad) FROM ventas GROUP BY fecha;
```


- Listar los productos cuyo nombre comienza con la letra 'P'.

```sql
SELECT * FROM productos WHERE nombre LIKE 'P%';
```


- Obtener el producto más vendido en términos de cantidad.

```sql
SELECT productos.nombre, SUM(ventas.cantidad) AS total_ventas FROM productos INNER JOIN ventas ON productos.id = ventas.producto_id GROUP BY productos.id ORDER BY total_ventas DESC LIMIT 1;
```


- Mostrar los productos que fueron vendidos en la fecha '__2024-01-18__'.

```sql
SELECT productos.nombre, ventas.cantidad FROM productos INNER JOIN ventas ON productos.id = ventas.producto_id WHERE ventas.fecha = '2024-01-18';
```


- Calcular el total de ventas para cada producto.

```sql
SELECT productos.nombre, SUM(ventas.cantidad) FROM productos INNER JOIN ventas ON productos.id = ventas.producto_id GROUP BY productos.id;
```


- Encontrar los productos con un precio entre 3 y 4.

```sql
SELECT * FROM productos WHERE precio BETWEEN 3 AND 4;
```


- Listar los productos y sus categorías ordenados alfabéticamente por categoría.

```sql
SELECT * FROM productos ORDER BY categoria ASC;
```


- Calcular el precio total de los productos vendidos en la fecha '2024-01-19'.

```sql
SELECT SUM(productos.precio * ventas.cantidad) FROM productos INNER JOIN ventas ON productos.id = ventas.producto_id WHERE ventas.fecha = '2024-01-19';
```


- Mostrar los productos que no pertenecen a la categoría "__Higiene__".

```sql
SELECT * FROM productos WHERE categoria != 'Higiene';
```


- Encontrar la cantidad total de productos en cada categoría.

```sql
SELECT categoria, SUM(id) FROM productos GROUP BY categoria;
```


- Listar los productos que tienen un precio igual a la media de precios.

```sql
SELECT * FROM productos WHERE precio = (SELECT AVG(precio) FROM productos);
```


- Calcular el precio total de los productos vendidos en cada fecha.

```sql
SELECT fecha, SUM(productos.precio * ventas.cantidad) FROM productos INNER JOIN ventas ON productos.id = ventas.producto_id GROUP BY fecha;
```


- Mostrar los productos con un nombre que termina con la letra 'o'.

```sql
SELECT * FROM productos WHERE nombre LIKE '%o';
```


- Encontrar los productos que han sido vendidos en más de una fecha.

```sql
SELECT productos.nombre FROM productos INNER JOIN ventas ON productos.id = ventas.producto_id GROUP BY productos.id HAVING COUNT(DISTINCT ventas.fecha) > 1;
```


- Listar los productos cuya categoría comienza con la letra 'L'.

```sql
SELECT * FROM productos WHERE categoria LIKE 'L%';
```


- Calcular el total de ventas para cada producto en la fecha '2024-01-17'.

```sql
SELECT productos.nombre, SUM(ventas.cantidad) AS total_ventas FROM productos INNER JOIN ventas ON productos.id = ventas.producto_id WHERE ventas.fecha = '2024-01-17' GROUP BY productos.id;
```


- Mostrar los productos cuyo nombre tiene al menos 5 caracteres.

```sql
SELECT * FROM productos WHERE LENGTH(nombre) >= 5;
```


- Encontrar los productos que tienen un precio superior al precio máximo en la tabla "__productos__".

```sql
SELECT * FROM productos WHERE precio > (SELECT MAX(precio) FROM productos);
```

</div>