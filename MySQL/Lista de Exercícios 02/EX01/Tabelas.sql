/*Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as informações dos personagens desse game. 

O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.

siga  exatamente esse passo a passo:

Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos relevantes da classe para se trabalhar com o serviço desse  game Online.

Crie uma tabela tb_personagem  e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionários para se trabalhar com o serviço desse game Online (não esqueça de criar a foreign key de tb_classe nesta tabela).

Popule esta tabela classe com até 5 dados.

Popule esta tabela personagem com até 8 dados.

Faça um select que retorne os personagens com o poder de ataque maior do que 2000.

Faça um select trazendo  os personagens com poder de defesa entre 1000 e 2000.

Faça um select  utilizando LIKE buscando os personagens com a letra C.

Faça um um select com Inner join entre  tabela classe e personagem.

Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros).

*/

create database db_generation_game_online;

use db_generation_game_online;

-- Tabela Classe
create table tb_classe(
id bigint auto_increment,
categoria varchar(50) not null,
funcao varchar(100) not null,
aliado boolean not null,
primary key (id)
);

-- Tabela Personagem
create table tb_personagem(
id bigint auto_increment,
nome varchar(100) not null,
poder varchar(100) not null, 
estamina int not null, -- De 0 a 100
ataque int not null, -- De 0 a 10.000
defesa int not null, -- De 0 a 10.000
id_personagem bigint,
primary key (id),
foreign key (id_personagem) references tb_classe(id)
);