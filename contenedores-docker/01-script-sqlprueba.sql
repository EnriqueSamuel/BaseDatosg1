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
