use db_generation_game_online_;

insert into tb_classe values('1', 'Guerreiro', 'Sentar o aço'),
('2', 'Feiticeiro', 'Soltar magia'),
('3', 'Cavaleiro', 'Sentar o aço, montado no cavalo'),
('4', 'Heroi', 'Salvar a todos'),
('5', 'All Might', 'Senta o aço em quem senta aço');


select * from tb_classe;
select * from tb_personagem;

select p.nome, c.categoria, p.poder, c.funcao, p.nivel, p.defesa
from tb_classe as c inner join tb_personagem as p
on c.id_classe = p.tb_classe_id_classe;

select nome, poder, nivel
from tb_personagem 
where nivel > 2000
order by poder;

select nome, poder, defesa
from tb_personagem 
where defesa >= 1000 and defesa <= 2000
order by poder;

select nome, poder
from tb_personagem 
where nome like 'c%';

