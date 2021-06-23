/*
Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco deverá ter o seguinte nome db_cursoDaMinhaVida, onde o sistema trabalhará com as informações dos produtos desta empresa. 

O sistema trabalhará com 2 tabelas tb_curso e tb_categoria.

siga  exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço deste site de cursos onlines.

Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço de um site de cursos onlines(não esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.

Faça um select  utilizando LIKE buscando os Produtos com a letra J.

Faça um um select com Inner join entre  tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria Java).
*/

create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
linguagem varchar(100) not null,
software varchar(100) not null,
ramo varchar(100) not null,
primary key(id)
);


create table tb_curso(
id bigint auto_increment,
nome varchar(100) not null,
preco decimal(5,2) not null,
descricao varchar(100) not null,
disponivel boolean not null,
formato varchar(50) not null,
curso_id bigint,
primary key(id),
foreign key (curso_id) references tb_categoria(id)
);