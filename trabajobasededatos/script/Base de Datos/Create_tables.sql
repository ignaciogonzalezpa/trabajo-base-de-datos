/**
* Autor: Ignacio González, Manuel Cortez  
* Fecha: 19 de septiembre 
* Version: 1
* Contenido: creación de las tablas 
*/
create table Alumno(
idalumno int auto_increment primary key,
Curso varchar (10) not null,
Nombre varchar (30) not null,
ApPaterno varchar (30) not null,
ApMaterno varchar (30) not null,
rut varchar (12) not null,
Direccion_Residencia varchar (100) not null
);

-- Tabla de asistencia de alumnos

create table Asistencia (
idAsistencia int auto_increment primary key,
descripcion varchar (10),
fecha date,
idAlumno int,
FOREIGN KEY (idAlumno) REFERENCES Alumno(idAlumno) on update cascade 
);
create table AxAlumno (
idAsistencia int,
idAlumno int,
Fecha date,
FOREIGN KEY (idAlumno) REFERENCES Alumno(idAlumno),
FOREIGN KEY (idAsistencia) REFERENCES Asistencia(idAsistencia) on update cascade 
);

-- Tabla de información de anotaciones 

create table Anotaciones(
idAnotaciones int  auto_increment primary key,
Descripcion varchar (200),
fecha date,
idAlumno int,
FOREIGN KEY (idAlumno) REFERENCES Alumno(idAlumno) on update cascade 
);

-- Tabla de días de faltas de alumnos 

create table DiasdeFaltas (
idDiasdefaltas int  auto_increment primary key,
fecha date,
idAlumno int,
FOREIGN KEY (idAlumno) REFERENCES Alumno(idAlumno) on update cascade 
);
