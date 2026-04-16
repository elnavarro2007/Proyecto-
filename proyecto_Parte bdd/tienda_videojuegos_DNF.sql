-- Base de datos de tienda de juegos




-- CREO LA BASE SI NO EXISTE
CREATE DATABASE if not EXISTS tiendaVideojuegos;

USE tiendaVideojuegos;



CREATE TABLE tienda (
	id int PRIMARY key Auto_increment,
	nombre_tienda VARCHAR(30) NOT NULL,
	telefono int(9) not NULL,
	stock INT,
	ubicacion VARCHAR(40)
	
	
);

CREATE TABLE empleado (
	
	dni CHAR(9) PRIMARY KEY,
	nombre VARCHAR(30) not NULL,
	apellidos VARCHAR(50) not NULL,
	telefono INT(9),
	id_tienda INT ,
	dni_supervisor CHAR(9),
	
	CONSTRAINT FK_IDENTIFICACION_TIENDA FOREIGN KEY (id_tienda) REFERENCES tienda (id)
	
	
);

CREATE table dependiente (
	
	dni_dependiente CHAR(9) PRIMARY KEY,
	
	CONSTRAINT fk_dni_dependiente FOREIGN KEY (dni_dependiente) REFERENCES empleado (dni)


);

CREATE table reponedor (
	
	dni_reponedor CHAR(9) PRIMARY KEY,
	
	CONSTRAINT fk_dni_reponedor FOREIGN KEY (dni_reponedor) REFERENCES empleado (dni)


);

CREATE table cliente (

	dni CHAR(9) PRIMARY KEY,
	nombre VARCHAR(30) not NULL,
	apellidos VARCHAR(50) not NULL,
	telefono INT(9),
	correo VARCHAR(50) UNIQUE,
	dni_dependiente CHAR(9),
	CONSTRAINT fk_dni_dependiente_atiende FOREIGN KEY (dni_dependiente) REFERENCES dependiente (dni_dependiente)



);

create table proveedor (

	id INT PRIMARY KEY Auto_increment,
	nombre_tienda VARCHAR(30) NOT NULL,
	telefono INT(9) not NULL,
	ubicacion VARCHAR(40)


);

create table videojuego (

	numero_serie CHAR(9)  PRIMARY KEY UNIQUE,
	nombre VARCHAR(30) not null UNIQUE,
	genero VARCHAR(20),
	id_proveedor int,
	precio DECIMAL(4,2),
	
	
	CONSTRAINT fk_id_proveedor FOREIGN KEY (id_proveedor) REFERENCES proveedor (id)




);

create table ficha (

	id_registro INT Primary Key Auto_increment,
	fechs_entrada DATE not null,
	fecha_Salida DATE not  null,
	dni_empleado CHAR(9),
	
	
	CONSTRAINT fk_dni_empleado FOREIGN KEY (dni_empleado) REFERENCES empleado (dni)


);

CREATE TABLE TIENDA_VIDEOJUEGO (
    id_tienda INT,
    num_serie CHAR(9),    
    PRIMARY KEY (id_tienda, num_serie),
	
	CONSTRAINT FK_ID_TIENDA FOREIGN KEY (id_tienda) REFERENCES tienda (id),
	CONSTRAINT FK_NUM_TIENDA FOREIGN KEY (num_serie) REFERENCES videojuego (numero_serie)
	
	

);


create table cliente_videojuego (

	dni_cliente CHAR(9) ,
    numero_serie CHAR(9) ,
    
    PRIMARY KEY (dni_cliente, numero_serie),
	
	CONSTRAINT FK_DNI_CLIENTE FOREIGN KEY (dni_cliente) REFERENCES cliente (dni),
	CONSTRAINT FK_NUMERO_SERIE FOREIGN KEY (numero_serie) REFERENCES videojuego (numero_serie)
	
	
  


);

