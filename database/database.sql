create database games;
use games;
create table gamespag(
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(180),
    descripcion VARCHAR(255),
    image VARCHAR(200),
    create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

  create table productos(
    id INT NOT NULL auto_increment PRIMARY KEY,
    nombre VARCHAR(180),
    descripcion VARCHAR(255),
    image VARCHAR(2000),
    cantDisponible int,
    precio float
)