CREATE DATABASE IF NOT EXISTS cliente_db;

USE cliente_db;

CREATE TABLE IF NOT EXISTS clientes (
    documento char (8) not null,
    nombre varchar(30) not null,
    domicilio varchar(30),
    ciudad varchar(20),
    provincia varchar (20),
    telefono varchar(11)
);