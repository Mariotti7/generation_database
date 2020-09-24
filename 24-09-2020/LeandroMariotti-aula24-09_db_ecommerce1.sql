use ecommerce;

select * from produtos;
desc produtos;

# no insert to preco do produto o valor era de 161,52
update produtos
set preco = '500'
where preco between '160' and '162'
limit 1;

select * from produtos;