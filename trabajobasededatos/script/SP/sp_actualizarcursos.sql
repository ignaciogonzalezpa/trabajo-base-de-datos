
/**
* Autor: Manuel Cortez  
* Version: 1
* Contenido: procedure update
*/

/* desactivar opcion segura, edit->preferences->SqlEditor -> bajar y quitar opcion safe  */

delimiter $$$
create procedure sp_Update(
in _idalumno int
)
begin 
UPDATE alumno
SET Curso = "4toB"
WHERE curso="4toA";
end$$$

call sp_Update('1');