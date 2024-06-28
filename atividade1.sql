CREATE DATABASE db_servicosrh;
USE db_servicosrh;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (255),
    salario DECIMAL,
    datanascimento DATE,
    estado VARCHAR (255)
);

INSERT INTO tb_colaboradores(nome, salario, datanascimento, estado)
VALUES ("Ricardo Silva", 3000.00, "1999-12-12", "Pernambuco"),
       ("Lucas Ricciardi", 5500.0, "2000-11-14", "Rio de Janeiro"),
       ("Maria Eduarda", 5300.0, "2000-03-14", "Bahia"),
       ("Carlos Eduardo", 1950.0, "2000-03-22", "São Paulo"),
       ("Ana Clara", 1950.0, "2000-08-14", "Minas Gerais");
       
SELECT * 
FROM tb_colaboradores
WHERE salario > 2000;

SELECT *
FROM tb_colaboradores
WHERE salario < 2000;

UPDATE tb_colaboradores
SET salario = 5500.00
WHERE id = 1;

SELECT * FROM tb_colaboradores;
