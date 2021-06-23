
select * from tb_produtos;

select * from tb_produtos order by nome;

select * from tb_produtos order by nome DESC;

select * from tb_produtos where preco > 20.00 and categoria_id = 1;

select * from tb_produtos where preco > 20.00 or categoria_id = 1;

select * from tb_produtos where NOT categoria_id = 1;

select * from tb_produtos where nome like 'ha%';

select * from tb_produtos where preco in (20, 30, 40);

select * from tb_produtos where preco between 20 and 40;

select * from tb_produtos where dtValidade between '2021-11-07' and '2021-11-15' order by dtValidade, nome;

select count(categoria_id) from tb_produtos;

select sum(preco) from tb_produtos;

select avg(preco) as preco_medio from tb_produtos;

select categoria_id, avg(preco) as preco_medio from tb_produtos group by categoria_id;

select max(preco) from tb_produtos;

select min(preco) from tb_produtos;

select * from tb_produtos where preco = (select max(preco) from tb_produtos);

SELECT nome as Nome_Produto , MAX(preco) as Maior_Valor FROM tb_produtos GROUP BY nome ORDER BY preco DESC LIMIT 1;

select tb_produtos.nome, tb_produtos.preco, tb_produtos.qtproduto, tb_categoria.descricao, tb_categoria.ativo 
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where categoria_id = 1;

-- Apresenta apenas produtos bovinoa
select tb_produtos.nome, tb_produtos.preco, tb_produtos.qtproduto, tb_categoria.descricao, tb_categoria.ativo 
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where categoria_id = 1;





