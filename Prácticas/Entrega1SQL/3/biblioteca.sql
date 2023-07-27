create table Autor (
    DNIA char(3) constraint DNIA_clave_primaria primary key,
    NombreA char(3) constraint NombreA_no_nulo not null
);

create table Libro (
    codlib char(3) constraint codlib_clave_primaria primary key,
    Titulo char(3) constraint Titulo_no_nulo not null
);

create table Usuario (
    DNI char(3) constraint DNI_clave_primaria primary key,
    NombreU char(3) constraint NombreU_no_nulo not null
);

create table Tema (
    codtema char(3) constraint codtema_clave_primaria primary key,
    Descripcion char(3) constraint Descripcion_no_nulo not null
);
