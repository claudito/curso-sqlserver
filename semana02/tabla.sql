
-- ALUMNOS
/*

codigo: autoincrementable 1,2,3..... + infinito
nombres:  alfanumericos
apellidos: alfanumericos
dni: cadena/alfnumerico - (46794282) - 1990 
037899999 
fecha nacimiento: 15/07/1990 => 1990-07-15 
direccion: alfanumerico => text  

San juan de lurigancho
psj 123
calle 254

MYSQL => auto_increment

*/

CREATE TABLE alumno
(

codigo           int identity primary key,
nombres          varchar(100) NULL,
apellidos        varchar(100) NULL,
dni              varchar(10) NULL,
fecha_nacimiento date NULL,
direccion        text NULL

)

CREATE TABLE alumno
(

codigo           int identity primary key,
nombres          varchar(100) NOT NULL,
apellidos        varchar(100) NOT NULL,
dni              varchar(10) NOT NULL,
fecha_nacimiento date NOT NULL,
direccion        text NOT NULL

)


-- INSERT

INSERT INTO alumno(nombres,apellidos,dni,fecha_nacimiento,direccion)
VALUES
('LUIS','CLAUDIO','46794282','1990-07-15','SJL'),
('JUAN','PEREZ','99994455','1980-09-09','ICA');


INSERT INTO alumno(nombres,apellidos)
VALUES
('MARIA','TORRES');



-- SELECT
SELECT
codigo,
nombres,
apellidos,
dni,
fecha_nacimiento,
direccion 
FROM alumno

-- BORRADO DE TABLA
DROP TABLE alumno;

-- UPDATE
UPDATE alumno  SET 
fecha_nacimiento='1991-10-23'

WHERE codigo=3

UPDATE alumno  SET 
fecha_nacimiento='1991-10-10'

WHERE codigo=3  AND dni='46794282'


UPDATE alumno  SET

fecha_nacimiento='1991-10-10',
dni             = '99880044'

WHERE codigo=3  AND dni='46794282'


-- DELETE 
DELETE FROM alumno  

WHERE  codigo=3


DELETE FROM alumno

WHERE codigo=4 AND dni='99994455'

