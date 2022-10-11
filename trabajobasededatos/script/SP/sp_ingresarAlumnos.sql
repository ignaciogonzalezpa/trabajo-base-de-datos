/*  
* Autor:Manuel Cortés
* Version:1
*/

delimiter $$$
create procedure sp_ingresoalumno (
in _idalumno int,
in _Curso varchar(20),
in _Nombre varchar(20),
in _ApPaterno varchar (20),
in _ApMaterno varchar (20),
in _rut varchar (12),
in _Direccion_Residencia varchar (100)
)
begin 
insert into Alumno(idAlumno,curso,Nombre,ApPaterno,ApMaterno,Rut,Direccion_Residencia)
values (
_idalumno,
_Curso,
_Nombre,
_ApPaterno,
_ApMaterno ,
_rut ,
_Direccion_Residencia);
end
$$$

Call sp_ingresoalumno("1","4toA","Manuel","Cortes","Vargas","20.762.742-9","Calle 1 casa 10");
Call sp_ingresoalumno("2","4toB","Constanza","Arce","Parraguez","21.207.067-K","Callejon santa helena");
Call sp_ingresoalumno("3","4toA","Ignacio","Gonzales","Vargas","25.856.895-1","Calle 1 casa 11");
Call sp_ingresoalumno("4","4toB","benjamin","Cortes","Vargas","20.986.742-2","Calle 2 casa 14");
Call sp_ingresoalumno("5","4toA","Javiera","apellidop1","apellidom1","20.321.742-3","Calle 3 casa 10");
Call sp_ingresoalumno("6","4toB","pedro","apellidop2","apellidom21","20.125.742-4","Calle 1 casa 15");
Call sp_ingresoalumno("7","4toA","daniela","apellidop3","apellidom2","20.845.742-5","Calle 1 casa 16");
Call sp_ingresoalumno("8","4toB","felipe","apellidop4","apellidom19","20.127.742-6","Calle 1 casa 17");
Call sp_ingresoalumno("9","4toA","diego","apellidop5","apellidom18","20.723.742-7","Calle 1 casa 18");
Call sp_ingresoalumno("10","4toB","Manolo","apellidop6","apellidom17","20.789.742-8","Calle 1 casa 19");
Call sp_ingresoalumno("11","4toA","Ruben","apellidop7","apellidom16","20.777.742-9","Calle 2 casa 12");
Call sp_ingresoalumno("12","4toB","sebastian","apellidop8","apellidom15","20.767.752-k","Calle 3 casa 1");
Call sp_ingresoalumno("13","4toA","pedrin","apellidop9","apellidom14","20.762.727-9","Calle 4 casa 11");
Call sp_ingresoalumno("14","4toB","Juan","apellidop10","apellidom13","20.769.777-9","Calle 3 casa 12");
Call sp_ingresoalumno("15","4toA","Fernando","apellido1p11","apellidom12","20.767.765-9","Calle 7 casa 10");

delimiter $$$
create procedure sp_Asistencia(
in _idAsistencia int,
in _descripcion varchar (10),
in _fecha date,
in _idAlumno int
)
begin 
insert into Asistencia (idAsistencia,
Descripcion,
fecha,
idAlumno
)
values (
_idAsistencia,
_Descripcion,
_fecha,
_idAlumno
);
end $$$

call sp_Asistencia('1',"presente",'2022-10-01',1);
call sp_Asistencia(2,"ausente",'2022-10-02',1);
call sp_Asistencia (3,"presente",'2022-10-03',1);
call sp_Asistencia(4,"ausente",'2022-10-04',1);
call sp_Asistencia(5,"presente",'2022-10-05',1);
call sp_Asistencia(6,"ausente",'2022-10-06',1);
call sp_Asistencia(7,"presente",'2022-10-07',1);
call sp_Asistencia(8,"ausente",'2022-10-08',1);
call sp_Asistencia (9,"presente",'2022-10-09',1);
call sp_Asistencia (10,"ausente",'2022-10-10',1);
call sp_Asistencia (11,"presente",'2022-10-11',1);
call sp_Asistencia (12,"ausente",'2022-10-12',1);
call sp_Asistencia (13,"presente",'2022-10-01',2);
call sp_Asistencia(14,"presente",'2022-10-02',2);
call sp_Asistencia(15,"presente",'2022-10-03',2);
call sp_Asistencia (16,"presente",'2022-10-04',2);
call sp_Asistencia(17,"presente",'2022-10-05',2);
call sp_Asistencia (18,"presente",'2022-10-06',2);
call sp_Asistencia (19,"presente",'2022-10-07',2);
call sp_Asistencia (20,"ausente",'2022-10-08',2);
call sp_Asistencia (21,"presente",'2022-10-09',2);
call sp_Asistencia (22,"ausente",'2022-10-10',2);
call sp_Asistencia (23,"presente",'2022-10-11',2);
call sp_Asistencia (24,"ausente",'2022-10-12',2);



delimiter $$$
create procedure sp_AxAlumno (
in _idAsistencia int,
in _idAlumno int,
in _Fecha date
)
begin 
insert into  AxAlumno (idAsistencia,
idAlumno ,
fecha
)
values (
_idAsistencia,
_idAlumno,
_fecha
);
end $$$

call sp_AxAlumno ('1','1','2022-10-01');
call sp_AxAlumno ('1','2','2022-10-02');
call sp_AxAlumno ('1','3','2022-10-03');
call sp_AxAlumno ('1','4','2022-10-04');
call sp_AxAlumno ('1','5','2022-10-05');


delimiter $$$
create procedure sp_Anotaciones (
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
  
call sp_Anotaciones ('1','Dice groserías en clases','2022-10-05','1');
call sp_Anotaciones ('2','le pega a compañero','2022-10-06','2');
call sp_Anotaciones ('3','corre en clases','2022-11-7','1');
call sp_Anotaciones ('4','Le pego con la mochila a compañero','2022-10-08','2');
call sp_Anotaciones ('5','Le escupe a compañero ','2022-12-05','3');
call sp_Anotaciones ('6','Dice groserías en clases','2022-09-05','3');
call sp_Anotaciones ('7','Dice groserías en clases','2022-10-05','3');
call sp_Anotaciones ('8','le pega a compañero','2022-10-05','3');
call sp_Anotaciones ('9','Dice groserías en clases','2022-10-05','2');
call sp_Anotaciones ('10','Se burla de compañero ','2022-10-05','2');
call sp_Anotaciones ('11','Dice groserías en clases','2022-10-05','5');
call sp_Anotaciones ('12','Le pega a un compañero ','2022-10-05','8');
call sp_Anotaciones ('13','Dice groserías en clases','2022-10-05','9');
call sp_Anotaciones ('14','Le escupe a compañero','2022-10-05','11');
call sp_Anotaciones ('15','Dice groserías en clases','2022-10-05','10');
call sp_Anotaciones ('16','Dice groserías en clases','2022-10-05','4');


delimiter $$$
create procedure sp_DiasdeFaltas(
in _idDiasdefaltas int ,
in _fecha date,
in _idAlumno int
)
begin 
insert into DiasdeFaltas (
idDiasdefaltas,
fecha,
idAlumno
)
values (
idDiasdefaltas,
fecha,
idAlumno
);
end$$$
Call sp_DiasdeFaltas('1','6-09-22','1');
Call sp_DiasdeFaltas('2','6-09-22','2');
Call sp_DiasdeFaltas('3','6-09-22','3');
Call sp_DiasdeFaltas('4','6-09-22','4');
Call sp_DiasdeFaltas('5','6-09-22','5');
Call sp_DiasdeFaltas('6','6-09-22','6');
Call sp_DiasdeFaltas('7','6-09-22','7');
Call sp_DiasdeFaltas('8','6-09-22','7');
Call sp_DiasdeFaltas('9','6-09-22','8');
Call sp_DiasdeFaltas('10','6-09-22','9');
Call sp_DiasdeFaltas('11','6-09-22','10');
Call sp_DiasdeFaltas('12','6-09-22','11');
Call sp_DiasdeFaltas('13','6-09-22','11');
Call sp_DiasdeFaltas('14','6-09-22','10');
Call sp_DiasdeFaltas('15','6-09-22','12');
Call sp_DiasdeFaltas('16','6-09-22','13');
Call sp_DiasdeFaltas('17','6-09-22','14');

  

