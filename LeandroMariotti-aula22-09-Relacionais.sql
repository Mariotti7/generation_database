create database db_chaves;
use db_chaves;

CREATE TABLE Pessoas (
    ID_Pessoa INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255)
);

CREATE TABLE Carro(
	ID_Carro integer PRIMARY KEY AUTO_INCREMENT,
    Nome varchar(255),
    Marca varchar(255),
    ID_Pessoa integer,
    CONSTRAINT fk_Pessoas FOREIGN KEY (ID_Pessoa) REFERENCES Pessoas (ID_Pessoa));
#CONSTRAINT=modelar #fk_Pessoas=nomeChave #FOREINGN KEY=chave estrangeira #REFERENCES=relacionada #Pessoas = id pessoa #ID_Pessoas = tabela

insert into Pessoas (Nome) values ('Juliana'), ('Julio'), ('Marcio');

select * from Pessoas;

insert into Carro(Nome, Marca, ID_Pessoa) values ('Gol', 'Wolks', 2), ('Palio', 'Fiat', 3);

select * from Carro;
select * from Pessoas
as P join Carro as C on P.ID_Pessoa = C.ID_Carro; 

truncate Pessoas;#Você não pode deletar uma chace estrangeira sem deletar a chave primaria(relacionada)