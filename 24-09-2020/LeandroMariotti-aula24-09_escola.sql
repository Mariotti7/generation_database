create database escola;
use escola;

CREATE TABLE alunos (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    matricula INT NOT NULL,
    nome VARCHAR(35),
    turma VARCHAR(5),
    ano date
);

alter table alunos
drop ano;

alter table alunos
add nota float;

SELECT 
    *
FROM
    alunos;
    
    insert into alunos values(1, 67364, 'Scott Summers', '3A', 7.2),
    (2, 67567, 'Jean Grey', '3A', 9.5),
    (3, 68904, 'Kurt Wagner', '1B', 6.5),
    (4, 78905, 'Kitty Pride', '1B', 6.8),
    (5, 67365, 'Hank Maccoy', '3C', 10.0),
    (6, 69093, 'Alex Summers', '2C', 5.6);
   
   insert into alunos values (7, 66096, 'Raven Darkholme', '3B', 10.0); 
    
    select* from alunos;
    
    #Faça um select que retorne o/as alunos/a com a nota maior do que 7.
    select * from alunos
    where nota > 7
    order by nota, nome, turma;
    
    #Faça um select que retorne o/as alunos/a com a nota menor do que 7.
     select * from alunos
    where nota < 7
    order by nota, nome, turma;
    
    
    
    