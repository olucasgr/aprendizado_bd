CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(50) NOT NULL,
    massa VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT,
    nome_pizza VARCHAR(50),
    valor DECIMAL(5,2),
    tamanho CHAR(1) NOT NULL,
    borda VARCHAR(200),
    categorias_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tipo, massa)
VALUES("Salgada", "Fina"),
("Salgada", "Grossa"),
("Salgada", "PAN"),
("Salgada", "Vegana"),
("Doce", "Fina"),
("Doce", "Grossa"),
("Doce", "Vegana");

SELECT * FROM tb_categorias;

INSERT INTO tb_pizzas (nome_pizza, valor, tamanho, borda, categorias_id)
VALUES("Pepperoni", 75.00, "G", "Recheada", 2),
("Mussarela", 55.00, "M", "Tradicional", 1), 
("Frango BBQ", 80.00, "G", "Recheada c/ Queijo", 3), 
("Vegetariana", 65.00, "M", "Recheada c/ Espinafre", 4), 
("Chocolate", 50.00, "M", "Tradicional", 5), 
("Morango c/ Nutella", 90.00, "G", "Recheada c/ Chocolate", 6), 
("Abacaxi c/ Canela", 60.00, "P", "Tradicional", 7), 
("Quatro Queijos", 85.00, "G", "Recheada c/ Cheddar", 2),
("Mexicana", 70.00, "M", "Integral", 3);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE valor > 45;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE "%a%";

SELECT nome_pizza, valor, tamanho, tb_categorias.tipo, tb_categorias.massa
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id;

SELECT nome_pizza, valor, tamanho, tb_categorias.tipo, tb_categorias.massa
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id 
WHERE tipo = "Doce";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categorias_id = tb_categorias.id;