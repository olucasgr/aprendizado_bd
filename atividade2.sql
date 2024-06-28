CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL,
    categoria VARCHAR(255)
);

INSERT INTO tb_produtos(nome, descricao, preco, estoque, categoria)
VALUES
    ('Notebook Dell Inspiron', 'Notebook Dell Inspiron com 8GB RAM e 256GB SSD', 3500.00, 10, 'Eletrônicos'),
    ('Smartphone Samsung Galaxy S21', 'Smartphone Samsung Galaxy S21 com 128GB', 4500.00, 15, 'Eletrônicos'),
    ('Mouse Logitech MX Master 3', 'Mouse sem fio Logitech MX Master 3', 350.00, 50, 'Acessórios'),
    ('Fone de Ouvido Sony WH-1000XM4', 'Fone de ouvido sem fio com cancelamento de ruído', 1200.00, 20, 'Acessórios'),
    ('Smart TV LG 55"', 'Smart TV LG 4K de 55 polegadas', 3200.00, 5, 'Eletrônicos'),
    ('Cadeira Gamer DXRacer', 'Cadeira gamer DXRacer com ajustes ergonômicos', 1500.00, 8, 'Móveis'),
    ('Teclado Mecânico Razer', 'Teclado mecânico Razer com switches verdes', 600.00, 30, 'Acessórios'),
    ('Monitor LG Ultrawide', 'Monitor LG Ultrawide 34 polegadas', 2500.00, 7, 'Eletrônicos');

SELECT * FROM tb_produtos
WHERE preco > 500;

SELECT * FROM tb_produtos
WHERE preco < 500;

UPDATE tb_produtos
SET preco = 3800.00
WHERE id = 1;

SELECT * 
FROM tb_produtos
