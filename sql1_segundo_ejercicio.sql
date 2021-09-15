use demo;

CREATE TABLE profesor (
	id INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(45) NOT NULL,
	apellido VARCHAR(45) NOT NULL,
	fecha_nacimiento DATE NOT NULL,
	salario FLOAT NOT NULL,
	PRIMARY KEY(id)
);

INSERT INTO profesor (nombre, apellido, fecha_nacimiento, salario) VALUES ('Juan','Pérez','1990-06-06',55000);
INSERT INTO profesor (nombre, apellido, fecha_nacimiento, salario) VALUES ('Maria Emilia','Paz','1984-07-15',72000);
INSERT INTO profesor (nombre, apellido, fecha_nacimiento, salario) VALUES ('Martin','Correa','1987-12-07',63000);
INSERT INTO profesor (nombre, apellido, fecha_nacimiento, salario) VALUES ('Lucia','Diaz','1991-02-24',45000);
INSERT INTO profesor (nombre, apellido, fecha_nacimiento, salario) VALUES ('Raul','Martinez','1980-10-15',85000);
INSERT INTO profesor (nombre, apellido, fecha_nacimiento, salario) VALUES ('Mabel','Rios','1982-06-12',83000);

-- 1. Todos los profesores cuyo salario sea mayor o igual a 65000.
select * from profesor where salario >= 65000;

-- 2. Todos los profesores que nacieron en la década del 80.
select * from profesor where year(fecha_nacimiento) between 1980 and 1990;
-- 3. 5 registros
select * from profesor limit 5;

-- 4. Todos los profesores cuyo apellido inicie con la letra “P”
select * from profesor where apellido like '%P%';
-- 5. Los profesores que nacieron en la década del 80 y tienen un salario mayor a 80000
select * from profesor where year(fecha_nacimiento) between 1980 and 1990 and salario>80000;