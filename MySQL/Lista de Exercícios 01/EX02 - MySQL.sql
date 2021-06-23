-- Criando banco de dados para e-commerce

create database db_ecommerce;

use db_ecommerce;

create table tb_estoque(
id bigint auto_increment,
categoria varchar(255)  not null,
tamanho varchar(255) not null,
preco decimal(6,2)  not null,
marca varchar(255)  not null,
cor varchar(255)  not null,
primary key(id)
);

insert into tb_estoque(categoria, tamanho, preco, marca, cor) values("Camiseta", "M", 895.00, "Nike collab Travis Scott", "Preta");
insert into tb_estoque(categoria, tamanho, preco, marca, cor) values("Calça", "G", 75.00, "Overcome", "Beje");
insert into tb_estoque(categoria, tamanho, preco, marca, cor) values("Moletom", "M", 599.00, "HIGH", "Roxo");
insert into tb_estoque(categoria, tamanho, preco, marca, cor) values("Regata", "G", 45.00, "Adidas", "Branca");
insert into tb_estoque(categoria, tamanho, preco, marca, cor) values("Meia", "P", 55.00, "Nike", "Preta");
insert into tb_estoque(categoria, tamanho, preco, marca, cor) values("Boné", "G", 85.00, "New Era", "Azul");
insert into tb_estoque(categoria, tamanho, preco, marca, cor) values("Touca", "M", 145.00, "BRONX", "Cinza");
insert into tb_estoque(categoria, tamanho, preco, marca, cor) values("Chinelo", "P", 95.00, "Havaianas", "Branco");

select * from tb_estoque;

select * from tb_estoque where preco > 500.00;
select * from tb_estoque where preco < 500.00;

update tb_estoque set tamanho = "G" where id = 3;


