create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
	id_categoria int(35) NOT NULL AUTO_INCREMENT,
    categoria_remedio varchar(11)NOT NULL,
    estoque enum('Sim','Nao') NOT NULL,
	PRIMARY KEY (id_categoria)
);

select * from tb_categoria;

insert into tb_categoria values ('1', 'A', 'Sim'),
('2', 'B', 'Sim'),
('3', 'C', 'Sim'),
('4', 'D', 'Sim'),
('5', 'E', 'Sim');

create table tb_produto(
	id_produto int(35) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	remedio_categoria varchar(255) NOT NULL,
    nome_remedio varchar(255) NOT NULL,
    receita enum('Sim', 'Nao') NOT NULL,
    preco double NOT NULL,
    fk_categoria int (35) NOT NULL
);

select * from tb_produto;

insert into tb_produto values ('1', 'E', 'Trembolona', 'Nao', '135.99', '5'),
('2', 'B', 'Dipirona', 'Nao', '15.99', '2'),
('3', 'A', 'Ritalina', 'Sim', '65.50', '1'),
('4', 'A', 'Rivotril', 'Sim', '85.99', '1'),
('5', 'D', 'Aspirina', 'Nao', '3.50', '4'),
('6', 'B', 'Diclofenaco', 'Nao', '35.99', '2'),
('7', 'C', 'Multivitaminico', 'Nao', '148.99', '3'),
('8', 'D', 'AAS Infantil ', 'Nao', '5.00', '4');

select p.remedio_categoria, p.nome_remedio, p.receita, p.preco, c.estoque
from tb_categoria as c INNER JOIN tb_produto as p
on c.id_categoria = p.fk_categoria;

select p.remedio_categoria, p.nome_remedio, p.receita, p.preco, c.estoque
from tb_categoria as c INNER JOIN tb_produto as p
on c.id_categoria = p.fk_categoria
where p.preco > '50.0';

select p.remedio_categoria, p.nome_remedio, p.receita, p.preco, c.estoque
from tb_categoria as c INNER JOIN tb_produto as p
on c.id_categoria = p.fk_categoria
where p.preco > '3.00' and p.preco < '60.00';

select p.remedio_categoria, p.nome_remedio, p.receita, p.preco, c.estoque
from tb_categoria as c INNER JOIN tb_produto as p
on c.id_categoria = p.fk_categoria
where p.nome_remedio like 'b%';

