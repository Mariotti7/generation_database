use loja_veiculos;

select * from proprietarios;

select * from veiculo;

select * from veiculo inner join proprietarios on
veiculo.proprietarios_id_dono = proprietarios.id_dono;