# Diccionari de Datos  de la BD de Control Escolar 

1. Informacion General

| Elemento | Valor |
| --- | --- |
| Proyecto | Control Escolar  |
| version | 1.0 |
| Fecha | Junio 2026|
| Elaboro | Ing. Enrique Samuel Mendieta Dominguez MTI |
| Sistema Gestor de Base de Datos | Sql Server |

2. Descripcion del Sistema de Base de Datos

Elsistema administra:
- Carreras
- Alumnos
- Materias
- Grupos
- Inscripciones 

Permite controlar la oferta academica 

3. Cbatalogo de restricciones utilizadas

| Codigo | Significado |
| --- | --- |
| PK | Primary Key  |
| FK | Foreign Key |
| NN | Not Null |
| UK | Unique |
| AI | Auto Increment |
| CK | Check |
| DF | Default |

4. Diccionario de Datos

## Tabla: Carrera
**Descripcion**
Almacena las carreras ofertadas por la universidad


| Campo | Tipo | Longitud | Restricciones | Descripccion |
| --- | --- | --- | --- | --- |
| id_carrera | INT| PK,AI,NN | - | Identificador unico de la carrera |
| Nombre | VARCAR | 100 | UQ, NN | Nombre carrera|
| Duracion | INT | 100 | - | Nombre carrera|

## Tabla Alumno

**Descripcion**

Almacena Informacion

| Campo | Tipo | Longitud | Restricciones | Descripccion |
| --- | --- | --- | --- | --- |
| id_alumno | INT| PK,AI,NN | - | Identificador unico del alumno  |
| Matricula | VARCAR | 10 | UQ, NN | Matricual Institucional|
| NOMBRE | VARCHAR | 20 | NN | Nombre del Alumno|
| apellido_materno | VARCHAR | 50 | NN | Apellido Materno|
| apellido_paterno | VARCHAR | 50 | NULL | Apellido Paterno|
| correo | VARCHAR | 100 | UK,NN | Correo Institucional |
| fecha_nacimiento | DATE | - | NN | Fecha de Nacimiento |
| correo | VARCHAR | 100 | NULL | Correo Institucional |
| id_carrera | INT| PK,NN | - | Carrera a la que pertenece |

5. Relaciones en la Base de Datos 

| Relacion | Cardinalidad | Descripcion |
| --- | --- | --- |
| Carrera  | Fila 1, Celda 2 | Fila 1, Celda 3 |


6. Matriz de claves foraneas

| Tabla | Campo FK | Referencia |
| --- | --- | --- |
| Alumno  | id_carrera | Carrera (id_carrera) |
| Materia  | id_carrera | Carrera (id_carrera) |
| Grupo  | id_profesor | Profesor (id_profesor) |
| Grupo  | id_materia | Materia (id_materia) |
| Inscripcion  | id_alumno | Alumno (id_alumno) |
| Inscripcion  | id_grupo | Grupo (id_grupo) |

7. Integridad Referencial

| Codigo | Regla |
| --- | --- |

| IR-01 | Nose puede registrar un alumno con una carrera inexistente  |
| IR-02 | No se pude crear un grupo para una materia inexistente  |
| IR-03 | No se puede crear un grupo para un profesor inexistente |
| IR-04 | No se puede inscribir un alumno en un grupo inexistente |
| IR-05 | No se puede eliminar una carreraque tenga alumnos asiciados sin antes registrarlos o eliminarlos  |

8. Reglas del negocio

| Codigo | Regla |
| --- | --- |

| RN-01 | Un alumno pertenece a una sola carrera   |
| RN-02 | Una carrera puede tener muchos alumnos  |
| RN-03 | Una carrera puede tener muchas asignaturas |
| RN-04 | Un profesor puede impartir varios cursos |
| RN-05 | Un grupo solo puede tener un profesor asignado |
| RN-06 | La calificacion debe de estar entree 0.0 y 10.0 |

9. Diagrama Relacional

![Cursos](../img/ER/Ejersicio3.drawio.png)









