/*Apartado g */

select distinct v.codpj from proveedor pro, proyecto pr, ventas v where pro.ciudad != pr.ciudad;

/*Apartado h */

select proveedor.ciudad from proveedor NATURAL JOIN (select codpro from ventas) 
minus
select codpro from pieza p, proyecto pr, ventas v where p.ciudad != pr.ciudad;

/*Apartado i */

(select proveedor.ciudad from proveedor ) 
minus 
(select pro.codpro from proveedor pro, pieza p, ventas v where pro.ciudad = p.ciudad );

/*Apartado j */

(select proveedor.ciudad from proveedor ) 
minus 
(select pro.codpro from proveedor pro, pieza p, ventas v where pro.ciudad != p.ciudad );

/*Apartado k */

select codpj from ventas where codpro='S1';

/*Apartado l */

(select ventas.cantidad from ventas) minus (select ventas.cantidad from ventas, ventas ven where ventas.cantidad > ven.cantidad);

/*Apartado m*/

(select codpj from ventas) minus (select codpj from ventas NATURAL JOIN (select * from pieza where color='Rojo') NATURAL JOIN (select * from proveedor where ciudad != 'Londres'));

/*Apartado n*/

(select codpj from ventas) minus (select codpj from ventas NATURAL JOIN (select * from proveedor where codpro != 'S1'));



