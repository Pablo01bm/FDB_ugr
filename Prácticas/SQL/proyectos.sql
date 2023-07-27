create table proyecto(
	codpj char(3) constraint codpj_clave_primaria primary key,
	nompj varchar2(20) constraint nompj_no_nulo not null,
	ciudad varchar2(15));


insert into proyecto VALUES ('J1', 'Proyecto 1','Londres');
insert into proyecto VALUES ('J2', 'Proyecto 2','Londres');
insert into proyecto VALUES ('J3', 'Proyecto 3','Paris');
insert into proyecto VALUES ('J4', 'Proyecto 4','Roma');

select * from  proyecto;