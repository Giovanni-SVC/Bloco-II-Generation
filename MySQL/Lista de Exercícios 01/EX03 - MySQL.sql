-- Criando banco de dados de escola
create database db_escola;

use db_escola;

create table tb_alunos(
id bigint auto_increment,
nome varchar(255) not null,
turma varchar(255) not null,
periodo varchar(255) not null,
nota float not null,
primary key (id)
);

insert into tb_alunos(nome, turma, periodo, nota) values("Ronaldo", "1ºB Ensino Médio", "Noturno", 6.0);
insert into tb_alunos(nome, turma, periodo, nota) values("Diana", "3ºA Ensino Médio", "Noturno", 8.5);
insert into tb_alunos(nome, turma, periodo, nota) values("Bilbo", "1ºD Ensino Fundamental", "Vespertino", 5.0);
insert into tb_alunos(nome, turma, periodo, nota) values("Harry", "2ºC Ensino Médio", "Noturno", 4.0);
insert into tb_alunos(nome, turma, periodo, nota) values("Luke", "3ºE Ensino Fundamental", "Vespertino", 3.0);
insert into tb_alunos(nome, turma, periodo, nota) values("Anakin", "9ºF Ensino Fundamental", "Vespertino", 7.0);
insert into tb_alunos(nome, turma, periodo, nota) values("Chadwick", "1ºA Ensino Médio", "Matutino", 6.5);
insert into tb_alunos(nome, turma, periodo, nota) values("Travis", "2ºD Ensino Médio", "Noturno", 8.0);

select * from tb_alunos;

select * from tb_alunos where nota > 7.0;
select * from tb_estudantes where nota < 7.0;

update tb_alunos set nota = 9.5 where id = 6;