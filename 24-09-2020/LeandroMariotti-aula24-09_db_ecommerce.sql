create database ecommerce;
use ecommerce;

create table produtos(
id_produto int primary key auto_increment,
nome varchar(35) not null,
preco double not null,
categoria varchar(35),
estoque int
);

#dados inseridos diretamente no grid usando o apply

select * from produtos;
desc produtos;

#Faça um select que retorne os produtos com o valor maior do que 500.
select * from produtos
where preco > '500'
order by preco, nome;

#Faça um select que retorne os produtos com o valor menor do que 500.
select * from produtos
where preco < '500'
order by preco, nome;