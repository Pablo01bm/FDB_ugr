create table pieza (
	codpie char(3) constraint codpie_clave_primaria primary key,
	nompie varchar2(10) constraint nompie_no_nulo not null,
	color varchar2(10),
	peso number(5,2)
	constraint peso_entre_0_y_100 check(peso>0 and peso<=100),
	ciudad varchar2(15));

insert into pieza VALUES ('P1', 'Tuerca','Gris', 2.5, 'Madrid');
insert into pieza VALUES ('P2', 'Tornillo','Rojo', 1.25, 'Paris');
insert into pieza VALUES ('P3', 'Arandela','Blanco', 3, 'Londres');
insert into pieza VALUES ('P4', 'Clavo','Gris', 5.5, 'Lisboa');
insert into pieza VALUES ('P5', 'Alcayata','Blanco', 10, 'Roma');

select * from pieza;