
create table ventas (
    codpro constraint codpro_clave_externa_proveedor references proveedor(codpro),
    codpie constraint codpie_clave_externa_pieza references pieza(codpie),
    codpj constraint codpj_clave_externa_proyecto references proyecto(codpj),
    cantidad number(4),
    constraint clave_primaria primary key (codpro,codpie,codpj)
);

ALTER TABLE ventas ADD fecha date;

SELECT * from opc.ventas;

INSERT into ventas select * from opc.ventas;

insert into ventas values ('S3', 'P1', 'J1', 150, '24/12/05');

SELECT * FROM ventas;