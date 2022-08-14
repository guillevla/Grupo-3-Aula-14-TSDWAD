DROP SCHEMA IF EXISTS peluqueriaCanina;
CREATE DATABASE peluqueriaCanina;
use peluqueriaCanina;

Create table Dueno (
    DNI varchar(9),
    Nombre varchar(20),
    Apellido varchar(20) ,
    Teléfono varchar(20),
    Direccion varchar(50),
    constraint pk_dni primary key (DNI)
);

Create table Perro (
    ID_Perro int not null auto_increment,
    Nombre varchar(20) not null,
    Fecha_nac DATE,
    Sexo char(1),
    DNI_dueno varchar(9),
    constraint pk_idperro primary key (ID_Perro),
    constraint fk_dni foreign key (DNI_dueno) references Dueno(DNI)
);

Create table Historial(
    ID_Historial int not null auto_increment,
    Fecha DATE,
    Perro int,
    Descripcion varchar(265),
    Monto float,
    constraint pk_idhist primary key (ID_Historial),
    constraint fk_idperro foreign key (Perro) references Perro(ID_Perro)
);

--Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.

INSERT INTO Dueno VALUES ('23645785', 'Olivia', 'Gutierrez', '2995601478', 'Los Tilos 5500');
INSERT INTO Perro(Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES ('Fox', '2017-09-01', 'M', '23645785' );