select * from tb_produto;

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco between 3.00 and 60;

select * from tb_produto where nome like '%B%';

select tb_produto.nome, tb_produto.preco, tb_produto.descricao, tb_produto.estoque, tb_produto.idade, tb_categoria.departamento, tb_categoria.categoria, tb_categoria.ramo
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.produtos_id;

-- Apresenta produtos somente do departamento de Beleza
select tb_produto.nome, tb_produto.preco, tb_produto.descricao, tb_produto.estoque, tb_produto.idade, tb_categoria.departamento, tb_categoria.categoria, tb_categoria.ramo
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.produtos_id where produtos_id = 1;