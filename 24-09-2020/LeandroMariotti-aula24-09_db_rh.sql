create database db_rh;
use db_rh;

create table funcionarios(
	id_funcionario int primary key auto_increment,
    matricula int not null,
    nome varchar(35) not null,
    cargo varchar(35) not null,
    salario double   
);

#dados inseridos diretamente no grid usando o apply

select * from funcionarios;
#Faça um select que retorne os funcionários com o salário maior do que 2000.
select * from funcionarios
where salario > '2000'
order by nome;

#Faça um select que retorne os funcionários com o salário menor do que 2000.
select * from funcionarios
where salario < '2000'
order by salario;
