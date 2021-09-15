create database demo;
use demo;
-- 1.Cree una tabla llamada CURSO
CREATE TABLE curso (
	codigo INT NOT NULL,
	nombre VARCHAR(45) NOT NULL,
	descripcion VARCHAR(45),
	turno VARCHAR(45) NOT NULL,
	PRIMARY KEY(codigo)
);
-- 2. Agregue un campo “cupo” de tipo numérico
ALTER TABLE curso add cupo int not null;
-- 3. Inserte datos en la tabla
INSERT INTO curso (codigo,nombre,descripcion,turno,cupo) VALUES (101, 'Algoritmos','Algoritmos y Estructuras de Datos','Mañana',35);
INSERT INTO curso (codigo,nombre,descripcion,turno,cupo) VALUES (102, 'Matematica Discreta','','Tarde',30);

-- 4. Intente ingresar un registro con el nombre nulo y verifique que no funciona.
INSERT INTO curso (codigo,nombre,descripcion,turno,cupo) VALUES (104, null,'','Tarde',30);

-- 5. Intente ingresar un registro con la clave primaria repetida y verifique que no funciona
INSERT INTO curso (codigo,nombre,descripcion,turno,cupo) VALUES (102, 'Programacion de Computadoras','','Tarde',30);

-- 6. Actualice, para todos los cursos, el cupo en 25.
UPDATE curso set cupo = 25 where codigo > 0;
-- 7. Elimine el curso Algoritmos
DELETE FROM curso where nombre='Algoritmos';