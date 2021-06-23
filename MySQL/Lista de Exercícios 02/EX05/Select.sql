select * from tb_produto;

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where nome like '%C%';


select tb_produto.nome, tb_produto.preco, tb_produto.descricao, tb_produto.qtEstoque, tb_categoria.departamento, tb_categoria.setor, tb_categoria.disponivel
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.produto_id;

-- Apresenta somente produtos do Departamento de Portas
select tb_produto.nome, tb_produto.preco, tb_produto.descricao, tb_produto.qtEstoque, tb_categoria.departamento, tb_categoria.setor, tb_categoria.disponivel
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.produto_id where produto_id = 2;