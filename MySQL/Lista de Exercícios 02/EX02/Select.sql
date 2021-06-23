select * from tb_pizza;

select * from tb_pizza where preco > 45.00;

select * from tb_pizza where nome like "%C%";

select tb_pizza.nome, tb_pizza.preco, tb_pizza.refrigerante, tb_pizza.azeitona, tb_pizza.ketchup, tb_categoria.sabor, tb_categoria.tamanho, tb_categoria.borda
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.pizza_id;

-- Pizzas doces
select tb_pizza.nome, tb_pizza.preco, tb_pizza.refrigerante, tb_pizza.azeitona, tb_pizza.ketchup, tb_categoria.sabor, tb_categoria.tamanho, tb_categoria.borda
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.pizza_id where pizza_id = 2;;