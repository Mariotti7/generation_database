create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria(
	id_categoria int(35) NOT NULL AUTO_INCREMENT,
    categoria_carne varchar(11)NOT NULL,
    promocao enum('Sim','Nao') NOT NULL,
	PRIMARY KEY (id_categoria)
);

select * from tb_categoria;

insert into tb_categoria values ('1', 'Bovina', 'Nao'),
('2', 'Ave', 'Sim'),
('3', 'Peixe', 'Nao'),
('4', 'Suína', 'Sim'),
('5', 'Crustaceo', 'Nao');

create table tb_produto(
	id_produto int(35) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	carne_categoria varchar(255) NOT NULL,
    nome_carne varchar(255) NOT NULL,
    promocao_valor enum('0', '10%') NOT NULL,
    preco double NOT NULL,
    fk_categoria int (35) NOT NULL
);

alter table tb_produto
ADD CONSTRAINT id_produto 
FOREIGN KEY(fk_categoria)
REFERENCES tb_categoria(id_categoria);

select * from tb_categoria;
select * from tb_produto;

insert into tb_produto values ('1', 'A', 'Patinho', '0', '20.00', '1'),
('2', 'B', 'Camarao', '0', '35.99', '5'),
('3', 'A', 'Picanha', '0', '65.50', '1'),
('4', 'A', 'Figado', '0', '25.99', '1'),
('5', 'D', 'Linguica', '10%', '7.50', '4'),
('6', 'B', 'Lagosta', '0', '135.99', '5'),
('7', 'C', 'Peito de Frango', '10%', '20.99', '2'),
('8', 'E', 'Tilápia', '0', '35.00', '3');

select p.carne_categoria, p.nome_carne, c.promocao, p.promocao_valor, p.preco
from tb_categoria as c INNER JOIN tb_produto as p
on c.id_categoria = p.fk_categoria;

select p.carne_categoria, p.nome_carne, c.promocao, p.promocao_valor, p.preco
from tb_categoria as c INNER JOIN tb_produto as p
on c.id_categoria = p.fk_categoria
where p.preco > '50.0';

select p.carne_categoria, p.nome_carne, c.promocao, p.promocao_valor, p.preco
from tb_categoria as c INNER JOIN tb_produto as p
on c.id_categoria = p.fk_categoria
where p.preco > '3.00' and p.preco < '60.00';

select p.carne_categoria, p.nome_carne, c.promocao, p.promocao_valor, p.preco
from tb_categoria as c INNER JOIN tb_produto as p
on c.id_categoria = p.fk_categoria
where p.nome_carne like 'c%';


