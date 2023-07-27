create table Corredores (
    Nocorre int constraint Nocorre_clave_primaria primary key,
    nomcorre char(3) constraint nomcorre_no_nulo not null
);

create table Etapas (
    Noetapa int constraint noetapa_clave_primaria primary key,
    fecha DATE constraint fecha_no_nulo not null,
    CiuSal char(3) constraint CiuSal_no_nulo not null,
    CiuSal char(3) constraint CiuSal_no_nulo not null,
    kms int constraint kms_no_nulo not null
);

create table Paises (
    codpais int constraint codpais_clave_primaria primary key,
    nomPais char(3) constraint nomPais_no_nulo not null
);

create table Equipos (
    codeq int constraint codeq_clave_primaria primary key,
    nomEq char(3) constraint nomEq_no_nulo not null,
    director char(3) constraint director_no_nulo not null
);

create table Tests (
    testid int constraint testid_clave_primaria primary key,
    denominacion char(3) constraint denominacion_no_nulo not null
);
