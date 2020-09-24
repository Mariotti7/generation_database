use db_rh;

select * from funcionarios;

# no insert to salario do gerente o valor era de 5000
update funcionarios
set salario = '10000'
where cargo = 'Gerente'
limit 1;

select * from funcionarios;