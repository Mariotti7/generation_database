create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
	id_categoria int(35) NOT NULL AUTO_INCREMENT,
    categoria varchar(11)NOT NULL,
    promocao enum('Sim','Nao') NOT NULL,
	PRIMARY KEY (id_categoria)
);

select * from tb_categoria;

insert into tb_categoria values ('1', 'Front End', 'Nao'),
('2', 'Back End', 'Sim'),
('3', 'Framework', 'Nao'),
('4', 'Mobile', 'Sim'),
('5', 'Logica de Programacao', 'Nao');

create table tb_curso(
	id_curso int(35) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	curso_categoria varchar(255) NOT NULL,
    nome_curso varchar(255) NOT NULL,
    promocao_valor enum('0', '10%') NOT NULL,
    preco double NOT NULL,
    fk_categoria int (35) NOT NULL
);

alter table tb_curso
ADD CONSTRAINT id_curso 
FOREIGN KEY(fk_categoria)
REFERENCES tb_categoria(id_categoria);

select * from tb_categoria;
select * from tb_curso;

insert into tb_curso values ('1', 'Web Design', 'HTML5, CSS3 e JavaScript', '0', '50.00', '1'),
('2', 'Fundamentos', 'Algoritmos', '0', '35.99', '5'),
('3', 'Web Design', 'Photoshop 3.5', '0', '100.50', '1'),
('4', 'Web Design', 'Java Script 3.5', '0', '125.99', '1'),
('5', 'Mobile', 'Seu primeiro App', '10%', '67.50', '4'),
('6', 'Fundamentos', 'Algortimos 3.5', '0', '99.99', '5'),
('7', 'Java', 'Java Completo', '10%', '29.99', '2'),
('8', 'Springboot', 'Curso de API', '0', '100', '3');

select c.categoria, p.curso_categoria, p.nome_curso, c.promocao, p.promocao_valor, p.preco
from tb_categoria as c INNER JOIN tb_curso as p
on c.id_categoria = p.fk_categoria;

select c.categoria, p.curso_categoria, p.nome_curso, c.promocao, p.promocao_valor, p.preco
from tb_categoria as c INNER JOIN tb_curso as p
on c.id_categoria = p.fk_categoria
where p.preco > '50.0';

select c.categoria, p.curso_categoria, p.nome_curso, c.promocao, p.promocao_valor, p.preco
from tb_categoria as c INNER JOIN tb_curso as p
on c.id_categoria = p.fk_categoria
where p.preco > '3.00' and p.preco < '60.00';

select c.categoria, p.curso_categoria, p.nome_curso, c.promocao, p.promocao_valor, p.preco
from tb_categoria as c INNER JOIN tb_curso as p
on c.id_categoria = p.fk_categoria
where p.nome_curso like 'j%';

select c.categoria, p.curso_categoria, p.nome_curso, c.promocao, p.promocao_valor, p.preco
from tb_categoria as c INNER JOIN tb_curso as p
on c.id_categoria = p.fk_categoria
where c.categoria = 'Back End';