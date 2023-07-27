/* 3.19 */

select codpie from ventas where codpro IN (select codpro from proveedor where ciudad = 'Madrid');

/* 3.20 */

select * from proyecto where ciudad in (select ciudad from pieza);

/* 3.21 */ /*Se han insertado algunas tuplas para comprobar la solución */
insert into ventas values ('S2', 'P2', 'J1', 300, '17/04/21') ;
insert into ventas values ('S2', 'P3', 'J2', 300, '17/04/21') ;

select distinct codpj from ventas where (codpie NOT IN 
(select pieza.codpie from pieza,ventas,proveedor where 
(ventas.codpie=pieza.codpie and ventas.codpro=proveedor.codpro and pieza.color='Roja' and proveedor.ciudad='Londres')));        

/* 3.22 */

select codpie from pieza where peso > ALL (select peso from pieza where nompie like 'Tornillo%');

/* 3.23 */

select * from pieza where peso <= all (select peso from pieza);
