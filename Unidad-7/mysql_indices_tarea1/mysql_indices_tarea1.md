<div align="justify">

<div align="right">
Rafael Martín Mayor.
</div>

# Tarea 1 Índices MySQL:

### Creación de database y tablas:

```sql
CREATE DATABASE IF NOT EXISTS instituto_db;

USE instituto_db;

CREATE TABLE IF NOT EXISTS alumnos (
    numero_inscripcion INT,
    anyo_inscripcion INT,
    nombre_alumno VARCHAR(100),
    documento_alumno VARCHAR(20),
    domicilio VARCHAR(100),
    ciudad VARCHAR(50),
    provincia VARCHAR(50),
    PRIMARY KEY (numero_inscripcion, anyo_inscripcion)
);

```

### Modificado de la database y tablas:

```sql
-- Eliminar la tabla "alumnos" si existe

DROP TABLE IF EXISTS alumnos;

/**

**/

-- Crear la tabla de alumnos con clave primaria compuesta

CREATE TABLE alumnos (
    numero_inscripcion INT,
    anyo_inscripcion INT,
    nombre_alumno VARCHAR(100),
    documento_alumno VARCHAR(20),
    domicilio VARCHAR(100),
    ciudad VARCHAR(50),
    provincia VARCHAR(50),
    PRIMARY KEY (numero_inscripcion, anyo_inscripcion)
);

/**

**/

-- Definir los índices

CREATE UNIQUE INDEX documento_alumno_unique_idx ON alumnos (documento_alumno); -- Índice único para el campo documento_alumno
CREATE INDEX ciudad_provincia_idx ON alumnos (ciudad, provincia); -- Índice común para ciudad y provincia (no es único, ya que puede haber múltiples alumnos en la misma ciudad y provincia)

/**

**/

-- Ver los índices de la tabla

SHOW INDEX FROM alumnos;

/**

**/

-- Intentar ingresar alumnos con clave primaria repetida y documento repetido

INSERT INTO alumnos (anyo_inscripcion, numero_inscripcion, nombre_alumno, documento_alumno, domicilio, ciudad, provincia) 
VALUES (2024, 1, 'Pepe Juan', '12345678', 'Calle 1', 'Ciudad 1', 'Provincia 1');

/**

**/

INSERT INTO alumnos (anyo_inscripcion, numero_inscripcion, nombre_alumno, documento_alumno, domicilio, ciudad, provincia) 
VALUES (2024, 2, 'Bonifacia Augusta', '12345678', 'Calle 2', 'Ciudad 2', 'Provincia 2');

/**

**/

-- Ingresar varios alumnos de la misma ciudad y provincia

INSERT INTO alumnos (anyo_inscripcion, numero_inscripcion, nombre_alumno, documento_alumno, domicilio, ciudad, provincia) 
VALUES 
    (2024, 3, 'Mañano Partrucio', '87654321', 'Calle 3', 'Ciudad 3', 'Provincia 3'),
    (2024, 4, 'Tío Gilito', '77777777', 'Calle 4', 'Ciudad 3', 'Provincia 3');

/**

**/

-- Eliminar los índices creados

DROP INDEX documento_alumno_unique_idx ON alumnos;
DROP INDEX ciudad_provincia_idx ON alumnos;

/**

**/

-- Verificar que los índices fueron eliminados

SHOW INDEX FROM alumnos;

/**

**/
```


</div>