
/**
* Autor: Manuel Cortez  
* Version: 1
* Contenido: ingresar nueva anotacion
*/


delimiter $$$
create procedure sp_ingresoanotacion (
in _idAnotaciones int,
in _Descripcion varchar (200),
in _fecha date,
in _idAlumno int
)
begin 
insert into  Anotaciones (
idAnotaciones,
Descripcion,
fecha,
idAlumno
)
values (
_idAnotaciones,
_Descripcion,
_fecha,
_idAlumno
);
end $$$


call sp_ingresoanotacion ('17','se porta mal','2022-10-01','1');

call sp_veranotaciones;
