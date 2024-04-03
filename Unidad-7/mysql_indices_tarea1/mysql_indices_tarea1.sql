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