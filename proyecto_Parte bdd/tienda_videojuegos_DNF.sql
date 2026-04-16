-- Base de datos de tienda de juegos




-- CREO LA BASE SI NO EXISTE
CREATE DATABASE if not EXISTS tiendaVideojuegos;

USE tiendaVideojuegos;



CREATE TABLE tienda (
	id int PRIMARY key Auto_increment,
	nombre_tienda varchar(30) NOT NULL,
	telefono int(9) not NULL,
	stock int,
	ubicacion varchar(40)
	
	
);

CREATE TABLE empleado (
	
	dni char(9) PRIMARY KEY,
	nombre VARCHAR(30) not NULL,
	apellidos VARCHAR(50) not NULL,
	telefono int(9),
	id_tienda int ,
	dni_supervisor char(9),
	
	CONSTRAINT fk_IDentificacion_tienda FOREIGN KEY(id_tienda) REFERENCES tienda (id)
	
	
);

CREATE table dependiente (
	
	dni_dependiente char(9) PRIMARY KEY,
	
	CONSTRAINT fk_dni_dependiente FOREIGN key (dni_dependiente) REFERENCES empleado (dni)


);

CREATE table reponedor (
	
	dni_reponedor char(9) PRIMARY KEY,
	
	CONSTRAINT fk_dni_reponedor FOREIGN key (dni_reponedor) REFERENCES empleado (dni)


);

CREATE table cliente (

	dni char(9) PRIMARY KEY,
	nombre VARCHAR(30) not NULL,
	apellidos VARCHAR(50) not NULL,
	telefono int(9),
	correo varchar(50) UNIQUE,
	dni_dependiente char(9),
	CONSTRAINT fk_dni_dependiente_atiende FOREIGN key (dni_dependiente) REFERENCES dependiente (dni_dependiente)



);

create table proveedor (

	id int PRIMARY key Auto_increment,
	nombre_tienda varchar(30) NOT NULL,
	telefono int(9) not NULL,
	ubicacion varchar(40)


);

create table videojuego (

	numero_serie char(9)  PRIMARY key,
	nombre varchar(30) not null UNIQUE,
	genero varchar(20),
	id_proveedor int,
	precio DECIMAL(4,2),
	
	
	CONSTRAINT fk_id_proveedor FOREIGN key (id_proveedor) REFERENCES proveedor (id)




);

create table ficha (

	id_registro int Primary Key Auto_increment,
	fechs_entrada date not null,
	fecha_Salida date not  null,
	dni_empleado char(9),
	
	
	CONSTRAINT fk_dni_empleado FOREIGN key (dni_empleado) REFERENCES empleado (dni)


);

CREATE TABLE TIENDA_VIDEOJUEGO (
    id_tienda int NOT NULL,
    num_serie char(9) NOT NULL,    
	precio_juego DECIMAL(4,2),
    PRIMARY KEY (id_tienda, num_serie),
 
	CONSTRAINT fk_id_tienda FOREIGN key (id_tienda) REFERENCES tienda (id),
	CONSTRAINT fk_num_serie FOREIGN key (num_serie) REFERENCES videojuego (numero_serie),
	CONSTRAINT fk_precio_juego FOREIGN key (precio_juego) REFERENCES videojuego (precio)

);


create table cliente_videojuego (

	dni_cliente   char(9) ,
    numero_serie  CHAR(9) ,
	nombre_juego varchar(30),
	precio_juego DECIMAL(4,2),
    
    PRIMARY KEY (dni_cliente, numero_serie),
	
	CONSTRAINT fk_numero_serie FOREIGN key (num_serie) REFERENCES videojuego (numero_serie),
    CONSTRAINT fk_dni_ciente FOREIGN key (dni_cliente) REFERENCES cliente (dni),
	CONSTRAINT fk_precio_del_juego FOREIGN key (precio_juego) REFERENCES videojuego (precio),
	CONSTRAINT fk_nombre_juego FOREIGN key (nombre_juego) REFERENCES videojuego (nombre)

);

