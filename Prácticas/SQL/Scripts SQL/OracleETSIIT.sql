CREATE TABLE prueba1 ( cad char(10), n int);
INSERT INTO prueba1 VALUES('Lucia',120);
INSERT INTO prueba1 VALUES('Pablo',114);
INSERT INTO prueba1 VALUES('Javi',200);
select * from prueba1 order by cad;
select * from prueba1 order by n;