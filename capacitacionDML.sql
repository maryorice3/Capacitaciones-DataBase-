-- Insertar datos en la tabla instructores
INSERT INTO instructores VALUES ('23547521', 'Pablo Perez', '1125468525');
INSERT INTO instructores (`dni`, `nombre`) VALUES 
('34526575', 'Daniel Lopez'),
('35847965', 'Elza Pato'),
('36457852','Alan Brito');

-- Insertar datos en la tabla cursos
INSERT INTO `capacitacion`.`cursos` (`codigo`, `nombre`, `cuota`,`duracion`, `dni_instructores`) VALUES 
('1', 'Panadería', '1200', '12','34526575'),
('2', 'Programación java', '1250', '16', '35847965'),
('3', 'Marketing', '1300', '16', '36457852'),
('4', 'Diseño web',1450,14,'36457852'),
('5', 'Python', '1300', '16', '36457852');

-- Insertar datos en la tabla alumnos
INSERT INTO `capacitacion`.`alumnos` 
(`email`, `nombre`, `telefono`) VALUES 
('mariG@gmail.com', 'Mariana Gomes', '1154685248'),
('MicaM@gmail.com', 'Micaela Mazzeo', '1158746325'),
('JacquiF@gmail.com', 'Jacqueline Fleitas', null),
('EstebanQ@gmail.com','Esteban Quito',null);


INSERT INTO `capacitacion`.`alumnos_cursos` (`codigo_cursos`, `email_alumnos`) VALUES 
('1', 'mariG@gmail.com'),
('2', 'mariG@gmail.com'),
('3', 'mariG@gmail.com'),
('2', 'MicaM@gmail.com'),
('3', 'JacquiF@gmail.com'),
('2',"EstebanQ@gmail.com");