use db_generation_game_online_;

insert into tb_classe values('1', 'Guerreiro', 'Sentar o aço'),
('2', 'Feiticeiro', 'Soltar magia'),
('3', 'Cavaleiro', 'Sentar o aço, montado no cavalo'),
('4', 'Heroi', 'Salvar a todos'),
('5', 'All Might', 'Senta o aço em quem senta aço');


select * from tb_classe;
select * from tb_personagem;

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

