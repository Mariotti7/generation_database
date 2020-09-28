create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
	id_categoria int(35) NOT NULL AUTO_INCREMENT,
    categoria_casa varchar(11)NOT NULL,
    promocao enum('Sim','Nao') NOT NULL,
	PRIMARY KEY (id_categoria)
);

select * from tb_categoria;

insert into tb_categoria values ('1', 'Sala', 'Nao'),
('2', 'Quarto', 'Sim'),
('3', 'Cozinha', 'Nao'),
('4', 'Banheiro', 'Sim'),
('5', 'Varanda', 'Nao');

create table tb_produto(
	id_produto int(35) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	casa_categoria varchar(255) NOT NULL,
    nome_material varchar(255) NOT NULL,
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

insert into tb_produto values ('1', 'A', 'Piso de madeira', '0', '100.00', '1'),
('2', 'B', 'Churrasqueira', '0', '35.99', '5'),
('3', 'A', 'Sofá de Madeira', '0', '165.50', '1'),
('4', 'A', 'Drywall', '0', '125.99', '1'),
('5', 'D', 'Box', '10%', '67.50', '4'),
('6', 'B', 'Coifa', '0', '135.99', '5'),
('7', 'C', 'Armario Embutido', '10%', '220.99', '2'),
('8', 'E', 'Cozinha Americana', '0', '535.00', '3');

select p.casa_categoria, p.nome_material, c.promocao, p.promocao_valor, p.preco
from tb_categoria as c INNER JOIN tb_produto as p
on c.id_categoria = p.fk_categoria;

select p.casa_categoria, p.nome_material, c.promocao, p.promocao_valor, p.preco
from tb_categoria as c INNER JOIN tb_produto as p
on c.id_categoria = p.fk_categoria
where p.preco > '50.0';

select p.casa_categoria, p.nome_material, c.promocao, p.promocao_valor, p.preco
from tb_categoria as c INNER JOIN tb_produto as p
on c.id_categoria = p.fk_categoria
where p.preco > '3.00' and p.preco < '60.00';

select p.casa_categoria, p.nome_material, c.promocao, p.promocao_valor, p.preco
from tb_categoria as c INNER JOIN tb_produto as p
on c.id_categoria = p.fk_categoria
where p.nome_material like 'c%';

select p.casa_categoria, p.nome_material, c.promocao, p.promocao_valor, p.preco
from tb_categoria as c INNER JOIN tb_produto as p
on c.id_categoria = p.fk_categoria
where p.casa_categoria = 'D';