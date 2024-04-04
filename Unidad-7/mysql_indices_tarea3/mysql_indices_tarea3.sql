CREATE DATABASE IF NOT EXISTS Base_Indices;

USE Base_Indices;

CREATE TABLE IF NOT EXISTS MOVIMIENTO (
    Identificador int PRIMARY KEY AUTO_INCREMENT,
    Articulo varchar(50) not null,
    Fecha date not null,
    Cantidad int not null
);