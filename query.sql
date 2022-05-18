create database games;

use games;

create table gamespag(
    id INT NOT NULL auto_increment PRIMARY KEY,
    title VARCHAR(180),
    descripcion VARCHAR(255),
    image VARCHAR(200),
    create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

select *from gamespag;

alter table gamespag
  modify image varchar(2000);
  
  create table productos(
    id INT NOT NULL auto_increment PRIMARY KEY,
    nombre VARCHAR(180),
    descripcion VARCHAR(255),
    image VARCHAR(2000),
    cantDisponible int,
    precio float
)
select *from gamespag;
select *from productos;

INSERT INTO productos (nombre,descripcion,image,cantDisponible,precio)
VALUES ('prueba2','sdfads','n/a',10,100);

/**********************************************************************************************************************************/

create database estadiapro;
use estadiapro;

  create table productos(
    id INT NOT NULL auto_increment PRIMARY KEY,
    nombre VARCHAR(180),
    descripcion VARCHAR(255),
    image VARCHAR(2000),
    cantDisponible int,
    precio float
);

INSERT INTO productos (nombre,descripcion,image,cantDisponible,precio)
VALUES ('prueba2','sdfads','n/a',10,100);

select *from productos;

create table usuarios(
    id INT NOT NULL auto_increment PRIMARY KEY,
    nombre VARCHAR(50) not null,
    correo VARCHAR(100) not null,
    pass VARCHAR(8) not null,
    Turno VARCHAR(20),
    rol VARCHAR(50)
    );
  
  create table productousuario(
    idcarro INT NOT NULL auto_increment PRIMARY KEY,
	id INT,
    nombre VARCHAR(180),
    precio decimal(9,2)
    );
    
    select *from productousuario;
    
    select *from usuarios;
INSERT INTO usuarios (nombre,correo,pass)
VALUES ('lao','brayan.c@gmail.com','admin');

alter table usuarios
  modify turno varchar(20);
  
  alter table usuarios
  modify rol varchar(20);