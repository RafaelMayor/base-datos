Rafael Martín Mayor.

# Tarea 2 SQLite

Paso 1: Crear una tabla con un campo de cada tipo.

```sql
daw@a103pc01:~$ sqlite3 tarea2.db

sqlite> CREATE TABLE Propietarios (
   ...> id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
   ...> nombre TEXT NOT NULL,
   ...> apellido TEXT NOT NULL,
   ...> dni TEXT UNIQUE );
sqlite> CREATE TABLE Vehiculos (
   ...> id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
   ...> marca TEXT NOT NULL,
   ...> modelo TEXT NOT NULL,
   ...> anio INTEGER NOT NULL,
   ...> id_propietario INTEGER references propietarios(id_propietario));
sqlite> INSERT INTO Propietarios ( nombre, apellido, dni )
   ...> VALUES ( 'Juan', 'Perez', '12345678A' );
sqlite> INSERT INTO Propietarios ( nombre, apellido, dni )
   ...> VALUES ( 'Maria', 'Lopez', '87654321B' );
sqlite> INSERT INTO Propietarios ( nombre, apellido, dni )
   ...> VALUES ( 'Carlos', 'Ruiz', '11111111C' );
sqlite> INSERT INTO Propietarios ( nombre, apellido, dni )
   ...> VALUES ( 'Laura', 'Gomez', '22222222D' );
sqlite> INSERT INTO Propietarios ( nombre, apellido, dni )
   ...> VALUES ( 'Pedro', 'Martinez', '33333333E' );
sqlite> INSERT INTO Propietarios ( nombre, apellido, dni )
   ...> VALUES ( 'Ana', 'Fernandez', '44444444F' );
sqlite> INSERT INTO Propietarios ( nombre, apellido, dni )
   ...> VALUES ( 'Diego', 'Sanchez', '55555555G' );
sqlite> INSERT INTO Propietarios ( nombre, apellido, dni )
   ...> VALUES ( 'Sofia', 'Torres', '66666666H' );
sqlite> INSERT INTO Propietarios ( nombre, apellido, dni )
   ...> VALUES ( 'Javier', 'Leon', '77777777I' );

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
sqlite> INSERT INTO Vehiculos ( marca, modelo, anio )
   ...> VALUES ( 'Ford', 'Fiesta', '2019' );
```
