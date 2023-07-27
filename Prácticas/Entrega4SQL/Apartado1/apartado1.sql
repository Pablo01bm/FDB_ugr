/*Apartado ñ*/

select codpie, codpj from ventas v where not exists (
(select codpj from proyecto where ciudad='Paris')
minus
(select codpj from ventas ven where v.codpj=ven.codpj)
);


/*Apartado o*/

select codpro from ventas NATURAL JOIN (select codpie, codpj from ventas)  where not exists(
(select codpj from proyecto)
minus
(select codpj from ventas v2 where codpie=v2.codpie )
);
