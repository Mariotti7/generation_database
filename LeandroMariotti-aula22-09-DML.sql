create database db_deletar;
use db_deletar;

CREATE TABLE consumidores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30)
);

insert into consumidores (nome) values
("Marcelo"),
("Julia");

SELECT 
    *
FROM
    consumidores;