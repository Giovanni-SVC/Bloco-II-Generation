-- Criando banco de dados de RH
create database db_rh;

use db_rh;

create table tb_funcionarios (
id bigint auto_increment,
nome varchar(255) not null,
salario decimal(6,2) not null,
data_nascimento date not null,
cargo varchar(255) not null,
primary key (id)
);

insert into tb_funcionarios(nome, salario, data_nascimento, cargo) values("Rebeca", 3500, "1998-07-27", "Desenvolvedora Java Jr");
insert into tb_funcionarios(nome, salario, data_nascimento, cargo) values("Caio", 6500, "1994-08-17", "Software Engineer");
insert into tb_funcionarios(nome, salario, data_nascimento, cargo) values("Janaina", 8000, "1990-11-11", "Product Owner");
insert into tb_funcionarios(nome, salario, data_nascimento, cargo) values("Marcelo", 1500, "1999-01-12", "Estagiário");
insert into tb_funcionarios(nome, salario, data_nascimento, cargo) values("Thomas", 800, "2001-12-20", "Desenvolvedora Java");

select * from tb_funcionarios;

select * from tb_funcionarios where salario > 2000;
select * from tb_funcionarios where salario < 2000;

update tb_funcionarios set salario = 3000 where id = 5;
