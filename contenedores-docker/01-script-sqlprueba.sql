-- Crear base de datos
-- Permite crear una base de datos (SQL-LDD)
CREATE DATABASE prueba1;

-- Utiilizar la base de datos
USE prueba1

CREATE TABLE alumno (
id INT NOT NULL, 
nombre VARCHAR(20) NOT NULL, 
edad INT not NULL,
matricula INT NOT NULL,
direccion VARCHAR(30) NULL,
CONSTRAINT pk_alumno
PRIMARY KEY (id),
CONSTRAINT unique_matricula
UNIQUE (matricula)

);
-- Agregar Dos alumnos (SQL-LMD)

INSERT INTO alumno (id, nombre, edad, matricula, direccion)
VALUES (1, 'ARCADIA' , 65 , 123456, 'calle del infierno'),
(2,'NARNIA', 19, 987654, 'Conocido')

-- Seleccionar los alumnos que tengo almacenados 
SELECT * 
FROM alumno

-- Cambiar un nombre de una tabla (SQL-LMD)

UPDATE alumno
SET nombre = 'MONICO'
WHERE id = 1;



-- ==================================================================== --
CREATE DATABASE pruebaatributos

CREATE TABLE alumnos(
num_Alumno int NOT NULL PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
apellido1 VARCHAR(50) NOT NULL,
apellido2 VARCHAR(50) NOT NULL,
fecha_nacimiento DATE NOT NULL
);

INSERT INTO alumnos
VALUES(1, 'Angel Patricio', 'Perez', 'Hernandez', '1998-09-08');

INSERT INTO alumnos
VALUES(2, 'Ian Uriel', 'Ruiz', 'Zuñiga', '2007-07-25');

SELECT nombre, apellido1, apellido2, YEAR(fecha_nacimiento), MONTH(fecha_nacimiento), DAY(fecha_nacimiento), (DATEDIFF(YEAR, fecha_nacimiento, GETDATE())) AS Edad
FROM alumnos;
