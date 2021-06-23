select * from tb_personagem;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like '%C%';

select tb_personagem.nome, tb_personagem.poder, tb_personagem.estamina, tb_personagem.ataque, tb_personagem.defesa, tb_classe.categoria, tb_classe.funcao, tb_classe.aliado
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.id_personagem;

-- Apresenta todos os personagens que são Hobbits
select tb_personagem.nome, tb_personagem.poder, tb_personagem.estamina, tb_personagem.ataque, tb_personagem.defesa, tb_classe.categoria, tb_classe.funcao, tb_classe.aliado
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.id_personagem where id_personagem = 4;