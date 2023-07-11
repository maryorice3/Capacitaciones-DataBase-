-- trae a los alumnos que esten en mas de  dos  curso --
select count(*) as "cursando", alumnos.nombre as "alumnos" from alumnos
join alumnos_cursos on alumnos_cursos.email_alumnos = alumnos.email
join cursos on alumnos_cursos.codigo_cursos = cursos.codigo
group by alumnos.nombre having cursando > 2;
 
-- el nombre de los alumnos sin numero de telefono --
select nombre, telefono from alumnos where telefono is null;

-- que alumno es el que abona la cuota mas baja --
-- 1) sacar la cuota mas baja
select min(cuota)  from cursos 
join alumnos_cursos on alumnos_cursos.codigo_cursos = cursos.codigo
join alumnos on alumnos_cursos.email_alumnos = alumnos.email
group by cursos.nombre;

-- mostrame el email de los alumnos  que cursan marketing --
select alumnos.email , cursos.nombre
from alumnos_cursos
join cursos on alumnos_cursos.codigo_cursos = cursos.codigo
join alumnos on alumnos_cursos.email_alumnos = alumnos.email
where cursos.nombre like "%marketing%";


-- cuanto tiempo dura el curso de programacion de java --
select duracion from cursos where nombre like "%programacion%";

-- cuanto cobra el instructor por cada curso--
select cuota*duracion, instructores.nombre from instructores
join cursos on cursos.dni_instructores = instructores.dni; 