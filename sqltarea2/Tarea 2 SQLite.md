Rafael Martín Mayor.

# Tarea 2 SQLite

Paso 1: Crear una tabla con un campo de cada tipo.

 - Abrir SQLite:

```sql
sqlite3 tarea2.db
```

- Crear una tabla Propietarios y otra tabla Vehiculos:

```sql
CREATE TABLE Propietarios (
id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
nombre TEXT NOT NULL,
apellido TEXT NOT NULL,
dni TEXT UNIQUE );
CREATE TABLE Vehiculos (
id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
marca TEXT NOT NULL,
modelo TEXT NOT NULL,
anio INTEGER NOT NULL,
id_propietario INTEGER references propietarios(id_propietario));
```

Paso 2: Insertar 20 entradas para las tablas Propietarios y Vehiculos.

```sql
insert into propietarios (nombre, apellido, dni) values ('Juan', 'Perez', '12345678A');
insert into propietarios (nombre, apellido, dni) values ('Maria', 'Lopez', '87654321B');
insert into propietarios (nombre, apellido, dni) values ('Carlos', 'Ruiz', '11111111C');
insert into propietarios (nombre, apellido, dni) values ('Laura', 'Gomez', '22222222D');
insert into propietarios (nombre, apellido, dni) values ('Pedro', 'Martinez', '33333333E');
insert into propietarios (nombre, apellido, dni) values ('Ana', 'Fernandez', '44444444F');
insert into propietarios (nombre, apellido, dni) values ('Diego', 'Sanchez', '55555555G');
insert into propietarios (nombre, apellido, dni) values ('Sofia', 'Torrez', '66666666H');
insert into propietarios (nombre, apellido, dni) values ('Javier', 'Leon', '77777777I');
insert into propietarios (nombre, apellido, dni) values ('Lucia', 'Castillo', '88888888J');
insert into propietarios (nombre, apellido, dni) values ('Luis', 'Gonzalez', '99999999K');
insert into propietarios (nombre, apellido, dni) values ('Marta', 'Diaz', '10101010L');
insert into propietarios (nombre, apellido, dni) values ('Victor', 'Vargas', '11111112M');
insert into propietarios (nombre, apellido, dni) values ('Elena', 'Castro', '12121212N');
insert into propietarios (nombre, apellido, dni) values ('Roberto', 'Blanco', '13131313O');
insert into propietarios (nombre, apellido, dni) values ('Natalia', 'Paredes', '14141414P');
insert into propietarios (nombre, apellido, dni) values ('Fernando', 'Herrera', '15151515Q');
insert into propietarios (nombre, apellido, dni) values ('Clara', 'Soto', '16161616R');
insert into propietarios (nombre, apellido, dni) values ('Sergio', 'Mendoza', '17171717S');
insert into propietarios (nombre, apellido, dni) values ('Patricia', 'Navarro', '18181818T');
insert into vehiculos (marca, modelo, anio, id_propietario) values ('Ford', 'Fiesta', '2019', '1');
insert into vehiculos (marca, modelo, anio, id_propietario) values ('Toyota', 'Corolla', '2018', '2');
insert into vehiculos (marca, modelo, anio, id_propietario) values ('Nissan', 'Sentra', '2020', '3');
insert into vehiculos (marca, modelo, anio, id_propietario) values ('Chevrolet', 'Spark', '2017', '4');
insert into vehiculos (marca, modelo, anio, id_propietario) values ('Honda', 'Civic', '2016', '5');
insert into vehiculos (marca, modelo, anio, id_propietario) values ('Ford', 'Mustang', '2021', '6');
insert into vehiculos (marca, modelo, anio, id_propietario) values ('Toyota', 'RAV4', '2019', '7');
insert into vehiculos (marca, modelo, anio, id_propietario) values ('Volkswagen', 'Golf', '2020', '8');
insert into vehiculos (marca, modelo, anio, id_propietario) values ('Honda', 'CR-V', '2018', '9');
insert into vehiculos (marca, modelo, anio, id_propietario) values ('Nissan', 'Altima', '2017', '10');
insert into vehiculos (marca, modelo, anio, id_propietario) values ('Chevrolet', 'Malibu', '2019', '11');
insert into vehiculos (marca, modelo, anio, id_propietario) values ('Toyota', 'Camry', '2020', '12');
insert into vehiculos (marca, modelo, anio, id_propietario) values ('Honda', 'Accord', '2018', '13');
insert into vehiculos (marca, modelo, anio, id_propietario) values ('Ford', 'Explorer', '2021', '14');
insert into vehiculos (marca, modelo, anio, id_propietario) values ('Nissan', 'Rogue', '2017', '15');
insert into vehiculos (marca, modelo, anio, id_propietario) values ('Volkswagen', 'Jetta', '2019', '16');
insert into vehiculos (marca, modelo, anio, id_propietario) values ('Chevrolet', 'Equinox', '2018', '17');
insert into vehiculos (marca, modelo, anio, id_propietario) values ('Toyota', 'Highlander', '2020', '18');
insert into vehiculos (marca, modelo, anio, id_propietario) values ('Honda', 'Odyssey', '2016', '19');
insert into vehiculos (marca, modelo, anio, id_propietario) values ('Nissan', 'Murano', '2019', '20');
```

Paso 3: Realizar consultas de datos.

- Seleccionar todos los propietarios

```sql
SELECT * FROM Propietarios;
```

- Listar todos los vehículos.

```sql
SELECT * FROM Vehiculos;
```

- Seleccionar solo los nombres y apellidos de los propietarios.

```sql
SELECT nombre, apellido FROM Propietarios;
```

- Listar todas las marcas y modelos de los vehículos.

```sql
SELECT marca, modelo FROM Vehiculos;
```

- Seleccionar solo los propietarios con apellido "Perez".

```sql
SELECT * FROM Propietarios where apellido = "Perez";
```

- Listar todos los vehículos con año 2019.

```sql
SELECT * FROM Vehiculos where anio = 2019;
```

- Seleccionar propietarios que tienen vehículos de la marca "Toyota".

```sql
SELECT v.* FROM Vehiculos as v, Propietarios as p where p.id = v.id_propietario and v. marca = "Toyota";
```

- Listar vehículos con marca "Ford" y modelo "Fiesta".

```sql
SELECT * FROM Vehiculos where marca = "Ford" and modelo = "Fiesta";
```

- Seleccionar propietarios con DNI "12345678A".

```sql
SELECT * FROM Propietarios where dni = "12345678A";
```

- Listar vehículos que pertenecen al propietario con ID 5.

```sql
SELECT * FROM Vehiculos where id_propietario = 5;
```

Paso 4: Realizar updates.


- Actualizar el nombre de un propietario con DNI "12345678A".

```sql
update Propietarios set nombre = "Manolo" where dni = "12345678A";
```

- Modificar el año de un vehículo con ID 3 a 2022.

```sql
update Vehiculos set anio = 2022 where id = 3;
```

- Cambiar el modelo de todos los vehículos Nissan a "Micra".

```sql
update Vehiculos set modelo = "Micra" where marca = "Nissan";
```

- Actualizar el apellido de un propietario con ID 7 a "Gomez".

```sql
update Propietarios set apellido = "Gomez" where id = 7;
```

- Modificar la marca de un vehículo con modelo "Fiesta" a "Renault".

```sql
update Vehiculos set marca = "Renault" where modelo = "Fiesta";
```