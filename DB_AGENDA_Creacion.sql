/*Tarea
1. Crear una base de datos 
-> db_agenda
	-> contactos
		- idContacto
		- nombre
		- apellido
		- fechaNacimiento
		- email
		- telefono
		
2. crear diagrama EER (WORKBENCH)

3. Crear menu en java
	1. Todos los contactos (si el contacto cumple años mostrar mensaje)
	2. Buscar contacto (por nombre o apellido) utilizar LIKE
	3. Agregar nuevo contacto
	4. Editar contacto
	5. Eliminar contacto
	
4. subir el proyecto a github(diagrama, .sql, proyecto netbeans).*/
/*DROP DATABASE DB_AGENDA;*/
CREATE DATABASE DB_AGENDA;
USE DB_AGENDA;

/*CREACION DE TABLAS*/

CREATE TABLE CONTACTOS (ID_CONTACTO smallint auto_increment,
						NOMBRE varchar(40),
                        APELLIDO varchar(40),
                        FECHA_NACIMIENTO date,
                        EMAIL varchar(40),
                        TELEFONO int(40),
                        primary key (ID_CONTACTO));

CREATE TABLE CONTACTOS_HIST (ID_HIST smallint auto_increment,
						NOMBRE varchar(40),
                        APELLIDO varchar(40),
                        FECHA_NACIMIENTO date,
                        EMAIL varchar(40),
                        TELEFONO int(40),
                        ID_ORIGINAL smallint,
                        primary key (ID_HIST));
                        
/*INSERTAR VALORES*/

INSERT INTO CONTACTOS (NOMBRE,APELLIDO,FECHA_NACIMIENTO,EMAIL,TELEFONO) 
			VALUE    ("ALEJANDRO","CRUZ","1990-01-01","ALEJANDROCRUZ@MAIL.COM", 1156325589),
					 ("ELSA","PATO","1992-01-01","ELSAPATO@MAIL.COM", 1156325478),
                     ("ELVIS","TEK","1985-01-01","ELVISTEK@MAIL.COM", 1156325369),
                     ("ARMANDO","PAREDES","1980-01-01","AMRANDOPAREDES@MAIL.COM", 1156325258),
                     ("LUZ","ROJAS","1997-01-01","LUZROJAS@MAIL.COM", 1156325789);
                        