Rafael Martín Mayor.

# Tarea 3 SQLite

# Trabajo con funciones en BBDD:

## Objetivo:

Practicar la creación y manipulación de una base de datos SQLite3 desde la línea de comandos.

## Pasos:

### Paso 1: Creación de la BBDD.

Crear con el siguiente contenido el fichero empleados-db.sql :

```sql
CREATE TABLE empleados (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT,
    salario REAL,
    departamento TEXT
);

INSERT INTO empleados (nombre, salario, departamento) VALUES ('Juan', 50000, 'Ventas');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('María', 60000, 'TI');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Carlos', 55000, 'Ventas');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Ana', 48000, 'Recursos Humanos');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Pedro', 70000, 'TI');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Laura', 52000, 'Ventas');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Javier', 48000, 'Recursos Humanos');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Carmen', 65000, 'TI');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Miguel', 51000, 'Ventas');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Elena', 55000, 'Recursos Humanos');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Diego', 72000, 'TI');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Sofía', 49000, 'Ventas');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Andrés', 60000, 'Recursos Humanos');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Isabel', 53000, 'TI');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Raúl', 68000, 'Ventas');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Patricia', 47000, 'Recursos Humanos');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Alejandro', 71000, 'TI');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Natalia', 54000, 'Ventas');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Roberto', 49000, 'Recursos Humanos');
INSERT INTO empleados (nombre, salario, departamento) VALUES ('Beatriz', 63000, 'TI');
```

### Paso 2: Lectura del fichero sql.

Entra en sqlite a través del siguiente comando:

```sql
sqlite3 tarea3.db 
```
Haciendo un .read del fichero sql, de nombre empleados-db.sql, realiza la creación e inserción de información de la BBDD:

```sql
.read empleados-db.sql
```

### Paso 3: Realización de consultas.

Realiza las siguientes consultas, y muestra el resultado obtenido:

- Funciones UPPER y LOWER:
    - Muestra el nombre de todos los empleados en mayúsculas.
```sql
SELECT UPPER(nombre) FROM empleados;
```
- Funciones Numéricas:
    - Calcula el valor absoluto del salario de todos los empleados.
```sql
SELECT ABS(salario) FROM empleados;
```
- Funciones de Fecha y Hora:
    - Muestra la fecha actual.
```sql
SELECT CURRENT_DATE;
```
- Funciones de Agregación:
    - Calcula el promedio de salarios de todos los empleados.
    - Convierte la cadena '123' a un valor entero.
```sql
SELECT AVG(salario) FROM empleados;
SELECT CAST('123' AS INTEGER);
```
- Funciones de Manipulación de Cadenas:
    - Concatena el nombre y el departamento de cada empleado.
```sql
SELECT CONCAT(nombre, ' ', departamento) FROM empleados;
```
- Funciones de Manipulación de Cadenas (CONCAT_WS):
    - Concatena el nombre y el departamento de cada empleado con un guion como separador.
```sql
SELECT CONCAT_WS('-', nombre, departamento) FROM empleados;
```
- Funciones de Control de Flujo (CASE):
    - Categoriza a los empleados según sus salarios.
```sql
SELECT nombre, CASE WHEN salario < 1000 THEN 'Low' WHEN salario BETWEEN 1000 AND 2000 THEN 'Medium' ELSE 'High' END as categoria_salario FROM empleados;
```
- Funciones de Agregación (SUM):
    - Calcula la suma total de salarios de todos los empleados.
```sql
SELECT SUM(salario) FROM empleados;
```
- Funciones Numéricas (ROUND):
    - Redondea el salario de todos los empleados a dos decimales.
```sql
SELECT ROUND(salario,2) FROM empleados;
```
- Funciones de Manipulación de Cadenas (LENGTH):
    - Muestra la longitud de cada nombre de empleado.
```sql
SELECT LENGTH(nombre) FROM empleados;
```
- Funciones de Agregación (COUNT):
    Cuenta el número total de empleados en cada departamento.
```sql
SELECT departamento, COUNT(*) FROM empleados GROUP BY departamento;
```
- Funciones de Fecha y Hora (CURRENT_TIME):
    - Muestra la hora actual.
```sql
SELECT CURRENT_TIME;
```
- Funciones de Conversión (CAST):
    Convierte el salario a un valor de punto flotante.
```sql
SELECT CAST(salario AS FLOAT ) FROM empleados;
```
- Funciones de Manipulación de Cadenas (SUBSTR):
    - Muestra los primeros tres caracteres de cada nombre de empleado.
```sql
SELECT SUBSTR(nombre, 1, 3) FROM empleados;
```

- **Order By** and **Like**.
    - Empleados en el departamento de 'Ventas' con salarios superiores a 52000.

    ```sql
    SELECT * FROM empleados WHERE departamento = 'Ventas' AND salario > 52000;
    ```

    - Empleados cuyos nombres contienen la letra 'a' y tienen salarios ordenados de manera ascendente.

    ```sql
    SELECT * FROM empleados WHERE nombre LIKE '%a%' ORDER BY salario ASC;
    ```

    - Empleados en el departamento 'Recursos Humanos' con salarios entre 45000 y 55000.

    ```sql
    SELECT * FROM empleados WHERE departamento = 'Recursos Humanos' AND salario BETWEEN 45000 AND 55000;
    ```

    - Empleados con salarios en orden descendente, limitando a los primeros 5 resultados.

    ```sql
    SELECT * FROM empleados ORDER BY salario DESC LIMIT 5;
    ```

    - Empleados cuyos nombres comienzan con 'M' o 'N' y tienen salarios superiores a 50000.

    ```sql
    SELECT * FROM empleados WHERE (nombre LIKE 'M%' OR nombre LIKE 'N%') AND salario > 50000;
    ```

    - Empleados en el departamento 'TI' o 'Ventas' ordenados alfabéticamente por nombre.

    ```sql
    SELECT * FROM empleados WHERE departamento IN ('TI', 'Ventas') ORDER BY nombre ASC;
    ```

    - Empleados con salarios únicos (eliminando duplicados) en orden ascendente.

    ```sql
    SELECT DISTINCT salario FROM empleados ORDER BY salario ASC;
    ```

    - Empleados cuyos nombres terminan con 'o' o 'a' y están en el departamento 'Ventas'.

    ```sql
    SELECT * from empleados where (nombre like '%o' or nombre like '%a') and departamento='Ventas';
    ```

    - Empleados con salarios fuera del rango de 55000 a 70000, ordenados por departamento.

    ```sql
    SELECT * FROM empleados WHERE salario NOT BETWEEN 55000 AND 70000 ORDER BY departamento ASC;
    ```

    - Empleados en el departamento 'Recursos Humanos' con nombres que no contienen la letra 'e'.

    ```sql
    SELECT * FROM empleados WHERE departamento = 'Recursos Humanos' AND nombre NOT LIKE '%e%';
    ```