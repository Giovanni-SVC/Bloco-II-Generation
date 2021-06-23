-- Atributos da Classe
insert into tb_classe (categoria, funcao, aliado) values ("Elfo","Se aliar ao mundo contra Sauron", true);
insert into tb_classe (categoria, funcao, aliado) values ("Mago","Enfrentar o Exército de Mordor", true);
insert into tb_classe (categoria, funcao, aliado) values ("Espadachim","Enfrentar o Exército de Mordor", true);
insert into tb_classe (categoria, funcao, aliado) values ("Hobbit","Levar o Anel até a Montanha da Perdição", true);
insert into tb_classe (categoria, funcao, aliado) values ("Necromante","Dominar a Terra-Média", false);

-- Atributos personagens
insert into tb_personagem (nome, poder, estamina, ataque, defesa, id_personagem) values ("Legolas","Flechas infinitas", 100, 2500, 2000, 1);
insert into tb_personagem (nome, poder, estamina, ataque, defesa, id_personagem) values ("Gandalf","Poderes Mágicos", 90, 6000, 5500, 2);
insert into tb_personagem (nome, poder, estamina, ataque, defesa, id_personagem) values ("Aragorn","Espadachim", 88, 3000, 2100, 3);
insert into tb_personagem (nome, poder, estamina, ataque, defesa, id_personagem) values ("Frodo","Portar o Um Anel", 66, 1900, 1600, 4);
insert into tb_personagem (nome, poder, estamina, ataque, defesa, id_personagem) values ("Celeborn","Governar Lothlórien", 79, 1000, 1000, 1);
insert into tb_personagem (nome, poder, estamina, ataque, defesa, id_personagem) values ("Sam","Proteger o Portador do Anel", 83, 1000, 900, 4);
insert into tb_personagem (nome, poder, estamina, ataque, defesa, id_personagem) values ("Saruman","Poderes Mágicos", 89, 5000, 4500, 2);
insert into tb_personagem (nome, poder, estamina, ataque, defesa, id_personagem) values ("Sauron","Magia Negra", 100, 9000, 9000, 5);