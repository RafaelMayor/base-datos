CREATE DATABASE IF NOT EXISTS SimpleDB;

USE SimpleDB;

CREATE TABLE IF NOT EXISTS Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    UserName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL
);

INSERT INTO Users (UserName, Email) VALUES ('Juan', 'juan@example.com');
INSERT INTO Users (UserName, Email) VALUES ('María', 'maria@example.com');
INSERT INTO Users (UserName, Email) VALUES ('Pedro', 'pedro@example.com');
INSERT INTO Users (UserName, Email) VALUES ('Abdul', 'abdul@example.com');
INSERT INTO Users (UserName, Email) VALUES ('Rashid', 'rashid@example.com');
INSERT INTO Users (UserName, Email) VALUES ('Mohammed', 'mohammed@example.com');

INSERT INTO Products (ProductName, Price) VALUES ('Producto 1', 10.99);
INSERT INTO Products (ProductName, Price) VALUES ('Producto 2', 20.50);
INSERT INTO Products (ProductName, Price) VALUES ('Producto 3', 15.75);
INSERT INTO Products (ProductName, Price) VALUES ('Producto 4', 11.47);
INSERT INTO Products (ProductName, Price) VALUES ('Producto 5', 13.94);
INSERT INTO Products (ProductName, Price) VALUES ('Producto 6', 14.50);