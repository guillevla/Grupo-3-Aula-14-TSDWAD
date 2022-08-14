create table dueno(
clave_dni int,
nombre varchar(100),
apellido varchar(100),
telefono bigint,
direccion varchar(150),
constraint pk_cdni primary key (clave_dni)
);
/*ingresar datos */
insert into dueno values(
1,
'sergio',
'lance',
261459878,
'av siempre viva 123'
);
insert into dueno values(
2,
'belen',
'cicarelli',
261459123,
'av siempre viva 123'
);
insert into dueno values(
4,
'luna',
'maureira',
261849878,
'av champagñant 0987'
);
insert into dueno values(
3,
'lorenzo',
'camargo',
261459578,
'clljon comunero 78996'
);
create table perro(
id_perro int,
nombre varchar(100),
fecha_nac datetime,
sexo varchar(50),
clave_dni1 int,
constraint pk_cperro primary key (id_perro),
constraint fk_fdni1  foreign key (clave_dni1) references dueno (clave_dni)
);
Alter table Perro modify fecha_nac date;
/*ingresar datos*/
insert into perro values(1,'firulais', '2022-05-15', 'macho',1);
insert into perro values(2,'neku', '2021-12-05', 'hembra',2);
insert into perro values(3,'zugor', '2022-03-01', 'macho', 3);
insert into perro values(4,'capitan', '2020-01-15', 'macho',4);
create table Historial(
clave_IdHistorial int,
Fecha date,
clave_IdPerro1 int,
Descripcion varchar(150),
Monto float,
constraint pk_cIdHistorial1 primary key (clave_IdHistorial),
constraint fk_fIdPerro1 foreign key (clave_IdPerro1) references perro(id_perro)
);
/*ingresar datos*/
insert into Historial values(1, '2022-03-12', 1, 'castracion', '500.02');
insert into Historial values(2, '2022-07-27', 1, 'cortado de uñas', '2500.3');
insert into Historial values(3, '2021-03-04', 1, 'extirpacion-tumor', '10000.00');
insert into Historial values(4, '2022-05-13', 1, 'amputacion', '8000.02');


select * from dueno;
select * from Historial;
select * from perro;
/*1. Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias*/
/* 2. Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.*/
/*Obtener todos los perros que asistieron a la peluquería en 2022*/
select fecha_nac,id_perro 
from perro
where fecha_nac >'2022-01-01';




