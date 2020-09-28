create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
	id_categoria int(35) NOT NULL AUTO_INCREMENT,
    categoria_sabor varchar(255)NOT NULL,
    adicional_borda double NOT NULL,
	PRIMARY KEY (id_categoria)
);

select * from tb_categoria;

insert into tb_categoria values ('1', 'Tradicional', '3.50'),
('2', 'Doce', '3.50'),
('3', 'Vegetariana', '3.50'),
('4', 'Especial', '3.50'),
('5', 'Monstro', '3.50');

create table tb_pizza(
	id_pizza int(35) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	sabor_pizza varchar(255) NOT NULL,
    ingredientes varchar(255) NOT NULL,
    borda_recheada enum('Sim', 'Nao') NOT NULL,
    preco double NOT NULL,
    fk_categoria int (35) NOT NULL
);

select*from tb_pizza;

insert into tb_pizza values ('1', 'Escarola I', 'Escarola refogada com muçarela e fatias de bacon', 'Sim', '35.99', '1'),
('2', 'Escarola II', 'Escarola refogada com muçarela e fatias de pimentão', 'Nao', '45.99', '3'),
('3', 'Sonho de Valsa', 'Chocolate coberto com bombom sonho de valsa', 'Nao', '33.50', '2'),
('4', 'Picanha', 'Picanha fatiada, Muçarela de Bufala e Cebola', 'Sim', '55.99', '4'),
('5', 'Schwarzenegger', 'Peito de Peru, Muçarela de Búfala, Ovos, Cebola, Palmito, Calabresa moída e Bacon', 'Sim', '69.99', '5'),
('6', 'Javax', 'Catupiry, Rodelas de Tomate, Parmesão e Alho frito', 'Nao', '35.99', '1'),
('7', 'Vegetariana', 'Brócolis, Palmito, Milho, Tomate seco e Muçarela', 'Nao', '48.99', '3'),
('8', 'Lua Melada', 'Banana caramelizada, Leite condensado, Canela e Morango', 'Sim', '40.99', '2');

alter table tb_pizza
add constraint id_pizza 
foreign key (fk_categoria)
references tb_categoria(id_categoria);

#INNER JOIN das tabelas
select c.categoria_sabor, p.sabor_pizza, p.ingredientes, p.borda_recheada, c.adicional_borda, p.preco
from tb_categoria as c
inner join tb_pizza as p
on c.id_categoria = p.fk_categoria;

#INNER JOIN com preço mais que 45 reais
select c.categoria_sabor, p.sabor_pizza, p.ingredientes, p.borda_recheada, c.adicional_borda, p.preco
from tb_categoria as c
inner join tb_pizza as p
on c.id_categoria = p.fk_categoria
where p.preco > '45.00';

#INNER JOIN com preço entre 29 e 60 reais
select c.categoria_sabor, p.sabor_pizza, p.ingredientes, p.borda_recheada, c.adicional_borda, p.preco
from tb_categoria as c
inner join tb_pizza as p
on c.id_categoria = p.fk_categoria
where p.preco > '28.00' and '61.00';

#INNER JOIN com pizzas que comecem com a letra C
select c.categoria_sabor, p.sabor_pizza, p.ingredientes, p.borda_recheada, c.adicional_borda, p.preco
from tb_categoria as c
inner join tb_pizza as p
on c.id_categoria = p.fk_categoria
where p.sabor_pizza like 'c%';

#INNER JOIN da categoria pizza doce
select c.categoria_sabor, p.sabor_pizza, p.ingredientes, p.borda_recheada, c.adicional_borda, p.preco
from tb_categoria as c
inner join tb_pizza as p
on c.id_categoria = p.fk_categoria
where c.categoria_sabor = 'Doce';

