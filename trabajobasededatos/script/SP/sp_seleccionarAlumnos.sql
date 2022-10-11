/* 
* Autor: Ignacio González, Manuel Cortez  
* Version:1
* Contenido: select solicitados

ingresar los datos antes 
*/
/*Curso / Nombre / ApPaterno / ApMaterno/ Anotaciones / Dia*/
DELIMITER $$
CREATE PROCEDURE sp_veranotaciones()
BEGIN
    SELECT al.curso,al.nombre,al.appaterno,al.apmaterno,an.descripcion anotacion,an.fecha
    FROM Alumno al
    inner join anotaciones an
    on al.idalumno = an.idalumno;
END$$

call sp_veranotaciones;

/*Nombre / ApPaterno / ApMaterno / asistencia*/
DELIMITER $$
CREATE PROCEDURE sp_verasistencia()
BEGIN
    SELECT al.nombre,al.appaterno,al.apmaterno,sum(if(asi.descripcion = 'presente',1,0)) diasPresente,sum(if(asi.descripcion = 'ausente',1,0)) diasFalta
    FROM Alumno al
    inner join asistencia asi
    on al.idalumno = asi.idalumno
    group by al.idalumno;
END$$

call sp_verasistencia;