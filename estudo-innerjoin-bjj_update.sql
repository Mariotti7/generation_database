use academia;

alter table aluno
add column Academia varchar(35);

select * from aluno;
select * from faixa;

select * from aluno;
select * from faixa;

alter table faixa
change professor mestre varchar(35);

alter table aluno
change Academia filiação varchar(35);

select a.id_aluno, a.nome, f.graduacao, f.mestre, a.filiação
from aluno as a inner join faixa as f
on a.id_aluno = f.id_faixa_aluno
order by nome;