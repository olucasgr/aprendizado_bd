CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
	id BIGINT AUTO_INCREMENT,
    posicao VARCHAR(50),
    descricao VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(50),
    idade INT,
    time VARCHAR(50),
    ataque INT,
    drible INT,
    defesa INT,
    classe_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

INSERT INTO tb_classe (posicao, descricao)
VALUES ("Tanque", "Alta defesa"),
("Mago", "Alta magia"),
("Atirador", "Alto ataque"),
("Assassino", "Alto dano explosivo"),
("Suporte", "Apoio ao time"),
("Lutador", "Equilibrado entre ataque e defesa");

SELECT * FROM tb_classe;

DROP TABLE IF EXISTS tb_personagens;

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(50),
    idade INT,
    time VARCHAR(50),
    ataque INT,
    drible INT,
    defesa INT,
    classe_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

INSERT INTO tb_personagens (nome, idade, time, ataque, drible, defesa, classe_id)
VALUES ("Garen", 30, "Demacia", 7000, 2000, 9000, 1),
("Lux", 23, "Demacia", 6000, 8000, 4000, 2),
("Ashe", 25, "Freljord", 8500, 6000, 3000, 3),
("Zed", 28, "Ionia", 9000, 8500, 2000, 4),
("Sona", 22, "Ionia", 4000, 7000, 5000, 5),
("Darius", 35, "Noxus", 7500, 3000, 7000, 6),
("Ahri", 26, "Ionia", 7000, 9000, 4000, 2),
("Jinx", 21, "Zaun", 9000, 8000, 2000, 3),
("Leona", 32, "Mount Targon", 5000, 2000, 8500, 1),
("Thresh", 29, "Shadow Isles", 6000, 3000, 8000, 5),
("Katarina", 27, "Noxus", 8500, 7500, 3000, 4),
("Rengar", 30, "Ixtal", 9000, 7000, 4000, 4),
("Alistar", 28, "Runeterra", 7000, 4000, 8500, 1),
("Morgana", 31, "Demacia", 6500, 8000, 5000, 2), 
("Lucian", 29, "Demacia", 8500, 7000, 3000, 3),
("Aatrox", 33, "Runeterra", 8000, 6000, 7000, 6);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque < 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%a%";

SELECT nome, ataque, defesa, drible, tb_classe.posicao, tb_classe.descricao
FROM tb_personagens INNER JOIN tb_classe
ON tb_personagens.classe_id = tb_classe.id;

SELECT nome, ataque, defesa, drible, tb_classe.descricao
FROM tb_personagens INNER JOIN tb_classe
ON tb_personagens.classe_id = tb_classe.id WHERE descricao = "Alta defesa";