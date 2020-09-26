create database academia;
use academia;

create table aluno(
	id_aluno int not null primary key auto_increment,
    nome varchar(35) not null,
	sexo enum('M', 'F') not null
);

create table faixa(
	id_faixa int not null primary key auto_increment,
    graduacao varchar(35) not null,
    professor varchar(35) not null,
    constraint fk_id_aluno foreign key(id_faixa)
    references aluno(id_aluno)
)engine = InnoDB DEFAULT CHARSET = utf8;

select * from aluno;

select * from faixa;

insert into aluno values('1', 'Leandro Lo', 'M'),
('2', 'Kaynan Duarte', 'M'),
('3', 'Andre Galvao', 'M'),
('4', 'Rafael Mendes', 'M'),
('5', 'Guilherme Mendes', 'M'),
('6', 'Gezara Matuda', 'F');

update aluno
set nome = 'Gezary Matuda'
where id_aluno = '6';

alter table faixa
add column id_faixa_aluno int;

insert into faixa values ('1', 'faixa preta' ,'Luis Dagmar', '3'),
('2', 'faixa preta' ,'Ricardo Libório', '6'),
('3', 'faixa preta' ,'Ramon Lemos', '5'),
('4', 'faixa preta' ,'Cícero Costha', '1'),
('5', 'faixa preta' ,'Ramon Lemos', '4'),
('6', 'faixa preta' ,'Andre Galvao', '2'); 

select a.id_aluno, a.nome, f.graduacao, f.professor
from aluno as a inner join faixa as f
on a.id_aluno = f.id_faixa_aluno
order by nome;