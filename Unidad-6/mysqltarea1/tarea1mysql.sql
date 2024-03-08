CREATE DATABASE IF NOT EXISTS tarea1mysql;

USE tarea1mysql;

DROP TABLE IF EXISTS usuarios;
CREATE TABLE IF NOT EXISTS usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    edad INT,
    correo VARCHAR(20)
);

INSERT INTO usuarios (nombre, edad, correo) VALUES
('Juan', 25, 'juan@example.com'),
('María', 30, 'maria@example.com'),
('Pedro', 28, 'pedro@example.com');

DROP TABLE IF EXISTS productos;
CREATE TABLE IF NOT EXISTS productos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    precio DECIMAL(10, 2),
    cantidad INT
);

INSERT INTO productos (nombre, precio, cantidad) VALUES
('Camisa', 25.99, 100),
('Pantalón', 35.50, 80),
('Zapatos', 59.99, 50);

DROP TABLE IF EXISTS pedidos;
CREATE TABLE IF NOT EXISTS pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    usuario_id INT,
    producto_id INT,
    cantidad INT,
    fecha_pedido DATE,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (producto_id) REFERENCES productos(id)
);

INSERT INTO pedidos (usuario_id, producto_id, cantidad, fecha_pedido) VALUES
(1, 1, 2, '2024-03-01'),
(2, 2, 1, '2024-03-02'),
(3, 3, 3, '2024-03-03');