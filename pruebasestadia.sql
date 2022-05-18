create database games
use games
create database games;
use games;
create table gamespag(
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(180),
    descripcion VARCHAR(255),
    image VARCHAR(200),
    create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)
select*from productos

create table productos(
    id INT NOT NULL auto_increment PRIMARY KEY,
    nombre VARCHAR(180),
    descripcion VARCHAR(255),
    image VARCHAR(2000),
    cantDisponible int,
    precio float
    )
insert into productos (nombre,descripcion,image,cantDisponible,precio) values ('cheetos naranjas','frituras de sabritas','imagen',20,12.00)
    
    
create table usuarios(
    id INT NOT NULL auto_increment PRIMARY KEY,
    nombre VARCHAR(50) not null,
    correo VARCHAR(100) not null,
    pass VARCHAR(8) not null,
    Turno VARCHAR(20) not null,
    rol VARCHAR(50) not null
    )
    
insert into usuarios (nombre,correo,pass,Turno,rol) values('arturo','arturo@gmail.com','bakugan1','nocturno','comun')
    select * from turno
    select * from usuarios
    
create table turno(
    id INT NOT NULL auto_increment PRIMARY KEY,
    fechaE DATETIME null,
    fechaS DATETIME null,
	idusuario INT not null
    )
alter table turno add foreign key(idusuario) references usuarios(id);

 
/* entrada */
insert into turno (idusuario,fechaE) values(1,CURRENT_TIMESTAMP)
/* salida */
insert into turno (idusuario,fechaS) values(1,CURRENT_TIMESTAMP)

select * from productousuario
/* 2 fk  */
create table productousuario(
    id INT NOT NULL auto_increment PRIMARY KEY,
    idusuario INT not null,
    idproducto INT not null,
    monto float not null
    )
    alter table productousuario add foreign key(idusuario) references usuarios(id);
    alter table productousuario add foreign key(idproducto) references productos(id);
    
insert into productousuario (idusuario,idproducto,monto) values(1,9,12.00)
insert into productousuario (idusuario,idproducto,monto) values(1,10,12.00)
/* totmonto */
select SUM(monto) from productousuario





create table gasolinera(
    id INT NOT NULL auto_increment PRIMARY KEY,
    gasolina VARCHAR(30) not null,
    litro FLOAT not null,
    costo FLOAT not null
    )
    drop table productousuario
    
select*from gasolinera
 
insert into gasolinera (gasolina,litro,costo) values ('premium',1,24.50)


select*from gasusuario

create table gasusuario(
    id INT NOT NULL auto_increment PRIMARY KEY,
    idgasolina INT not null,
    idusuario INT not null,
    manguera INT not null,
    monto FLOAT not null
    )
    
