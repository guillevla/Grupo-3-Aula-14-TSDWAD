Create database peluqueriacanina;		/*----SE CREA LA BASE DE DATOS-----------*/

use peluqueriacanina;					/*----SE PONE EN USO LA BASE DE DATOS----*/

/*------------------SE CREAN LAS TABLAS DE LA BD---------------------------------*/

create table Dueno(
	Dni_Dueno int not null primary key,
	Nombre varchar(20) not null,
	Apellido varchar(20) not null,
	Telefono varchar(20) not null,
	Direccion varchar(100) null
);

create table Perro(
	Id_Perro int not null primary key ,
	Nombre varchar(25) not null,
	Fecha_nac date null,
	Sexo varchar(25) null,
	Dni_Dueno int not null,
	foreign key (Dni_Dueno) references Dueno(Dni_Dueno)
);

create table Historial(
	Id_Historial int not null primary key,
	Fecha date not null,
	Id_Perro int not null,
	Descripcion varchar(150),
	Monto float,
	foreign key (Id_Perro) references Perro(Id_Perro)
);
/*-----------------------------------CARGA DE REGISTROS------------------------------------*/

Insert Into Dueno (Dni_Dueno, Nombre, Apellido, Telefono, Direccion)
Values	(13526987, "Celestino", "Vera", "359426785", "Corrientes 29"),
		(23546987, "Maria", "Perez", 4789689,  "Pueyrredon 811"),
        (28957346, "Juan", "Perez", 4789689, "Belgrano 101"),
        (21436557, "Pedro", "Gomez", 480237158, "San Martín 1120");
        
/*---------------------------------EJERCICIO NÚMERO 1-------------------------------------*/

Insert Into Perro (Id_Perro, Nombre, Fecha_Nac, Sexo, Dni_Dueno)
Values	(13, "Puppy", "2012-3-5" , "Macho", 13526987),
		(14, "Lennon", "2012-12-12" , "Macho", 23546987),
        (15, "Frida", "2013-08-03", "Hembra", 28957346),
        (16, "Lobo", "2011-02-06", "Macho", 21436557),
        (17, "Laika", "2013-06-23", "Hembra", 21436557);
        
        
Insert Into Historial (Id_Historial, Fecha, Id_Perro, Descripcion, Monto)
Values	(001, "2013-03-03", 13, "Lavado", 2350),
		(002, "2013-03-04", 14, "Corte", 7510),
        (003, "2013-03-05", 15, "Uñas", 9530),
        (004, "2013-02-28", 17, "Lavado", 8500);
        
/*--------------------------------------EJERCICIO NUMERO 2----------------------------------*/

Insert Into Perro (Id_Perro, Nombre, Fecha_Nac, Sexo, Dni_Dueno)
Values (18, "Mora", "2012-07-29", "Hembra", 21436557);

/*--------------------------------------EJERCICIO NÚMERO 12---------------------------------*/

Select Perro.Nombre
From Perro
Where Perro.Sexo = "Macho";



        