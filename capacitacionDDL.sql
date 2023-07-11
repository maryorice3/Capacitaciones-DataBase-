-- Crear la base de datos
drop database if exists capacitacion;
create database capacitacion;

-- Usar la base de datos
use capacitacion;

-- Crear la tabla instructores
create table instructores(
	dni int primary key,
    nombre varchar(50),
    telefono int
);

-- Crear la tabla alumnos
create table alumnos(
	email varchar(50) primary key,
    nombre varchar(50),
    telefono int
);

-- Crear la tabla cursos
create table cursos(
	codigo int primary key,
    nombre varchar(50),
    cuota double,
    duracion int,
    dni_instructores int,
    foreign key (dni_instructores) references instructores(dni)
);

-- Crear la tabla alumnos_cursos
create table alumnos_cursos(
	id int primary key auto_increment,
    email_alumnos varchar(50),
    codigo_cursos int,
    foreign key (email_alumnos) references alumnos(email),
    foreign key (codigo_cursos) references cursos(codigo)
);