create database  pelucan

use pelucan


create table Dueno(
DNI int not null,
Nombre varchar(20),
Apellido varchar(20) not null,
Telefono varchar(15) not null,
Direccion varchar(50),
constraint pk_cDNI primary key (DNI)
);

/* 1)Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias. */

create table Perro(
IdPerro int not null auto_increment,
Nombre varchar(15) not null,
Fecha_nac date,
Sexo varchar(10),
DNI1 int not null,
constraint pk_cIdPerro primary key (IdPerro),
constraint fk_fDNI1 foreign key (DNI1) references Dueno(DNI)
);

create table Historial(
IdHistorial int auto_increment not null,
Fecha date,
IdPerro1 int not null ,
Descripcion varchar(200),
Monto float,
constraint pk_cIdHistorial1 primary key (IdHistorial),
constraint fk_fIdPerro1 foreign key (IdPerro1) references Perro(IdPerro)
);

insert into Perro(IdPerro, Nombre, Fecha_nac, Sexo, DNI1) values ("1", "Luna", "2017-08-20", "Hembra", "34297213")

insert into Dueno(clave_Dni, Nombre, Apellido, Telefono, Direccion) values ("34297213", "Estela", "Lopez", "154236782","Los Notros 123")

update Dueno set Direccion = "Libertad 123" where DNI=34297213
