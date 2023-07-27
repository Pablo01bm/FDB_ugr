/*Apartado a */

select nombre from alumnos where provincia='Granada' UNION (select nombre from alumnos where provincia='Almeria');

/*Apartado b */

select ape1, ape2, nombre from alumnos where DNI in (select DNI from asigna NATURAL JOIN matricula where curso='1' UNION (select DNI from asigna NATURAL JOIN matricula where curso='2'));

/*Apartado c */

select distinct asi# from asigna where credt > 6 AND exists (select codasi# from matricula where curso_academico ='2014-2015');

/*Apartado d */
 
select asi# from asigna where not exists (select codasi# from matricula where curso_academico ='2013-2014');

/*Apartado e*/

select dni, ape1, ape2, nombre from alumnos where nota in (select max(nota) from alumnos);
