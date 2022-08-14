create database canino;
use canino;
create table dueno(
dni int primary key,
nombre varchar(100) not null,
apellido varchar (100) not null,
telefono int(45) not null,
direccion varchar (100) null

);
-- Ingreso datos del dueño
insert dueno(dni,nombre,apellido,telefono,direccion) values(1,'John', 'Wick',332223,'hotelContinental');

-- Crear tabla de perros
create table perro
(
id_perro int primary key,
nombre varchar(100) not null,
fecha_nac datetime not null,
sexo char(1) not null,
dni int,
foreign key(dni) references dueno(dni)

);

-- Crear datos del perro
insert perro(id_perro,nombre,fecha_nac,sexo,dni) values(1,'Daisy', 'Wick','1994-04-04 10:00:00','f',1);

create table historial (
id_historial int primary key,
fecha datetime,
perro int,
descripcion text,
monto int,
foreign key(perro) references dueno(id_perro)
);

-- ejercicio 10. Vaciar la tabla historial y resetear el contador del campo id

truncate table historial;