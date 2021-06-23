select * from tb_curso;

select * from tb_curso where preco > 50.00;

select * from tb_curso where preco between 3.00 and 60.00;

select * from tb_curso where nome like '%J%';

select tb_curso.nome, tb_curso.preco, tb_curso.descricao, tb_curso.disponivel, tb_curso.formato, tb_categoria.linguagem, tb_categoria.software, tb_categoria.ramo
from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.curso_id;

-- Procura por curso apenas de Java
select tb_curso.nome, tb_curso.preco, tb_curso.descricao, tb_curso.disponivel, tb_curso.formato, tb_categoria.linguagem, tb_categoria.software, tb_categoria.ramo
from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.curso_id where curso_id = 1;