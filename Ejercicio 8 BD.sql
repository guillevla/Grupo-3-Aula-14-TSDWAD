create database PatitasPeluqueria;
use PatitasPeluqueria;

create table Dueno (
DNI_Dueno int not null primary key,
Nombre varchar(30),
Apellido varchar(30),
Telefono varchar(30),
Direccion varchar(150)
);

/*Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias*/

create table Perro(
Id_Perro int not null primary key,
Nombre varchar(30),
Fecha_nac date,
Sexo varchar(25),
DNI_Dueno bigint,
foreign key (DNI_Dueno) references Dueno(DNI_Dueno)
);

create table Historial(
	Id_Historial int not null primary key,
	Fecha date,
	Id_Perro int not null,
	Descripcion varchar(150),
	Monto float,
	foreign key (Id_Perro) references Perro(Id_Perro)
);


select*from Dueno;
insert into Dueno values (39750688,'Alfredo', 'Perez',3517426469,'Publica 145');
insert into Dueno values (39779651,'Carlos', 'Lopez',3517368945,'SN 4420');

select*from Perro;
insert into Perro values (024,'Ciro', '07/09/2021','Macho','3517426469');
insert into Perro values (050,'Dino', '14/02/2022','Macho','3517368945');

select*from Historial;
insert into Historial values (01,'14/08/2022', '024','Corte','3000');
insert into Historial values (02,'13/08/2022', '050','Baño','2800');

/*Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.*/

Insert Into Perro (Id_Perro, Nombre, Fecha_Nac, Sexo, DNI_Dueno)
Values (030, "Tobby", "06/01/2020", "Macho", 40702958);

/*Insertar un nuevo registro en la tabla historial de un perro cuyo ID Perro es igual a 10. */
Insert Into Historial (Id_Historial, Fecha, Id_Perro, Descripcion, Monto)
Values (015, "03/05/2022", "10", "Baño", 2800);
