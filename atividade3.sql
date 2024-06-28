CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (255) NOT NULL,
    datanascimento DATE NOT NULL,
    materia VARCHAR (255),
    nota DECIMAL NOT NULL
);

INSERT INTO tb_estudantes (nome, datanascimento, materia, nota)
VALUES
    ('Ana Paula Silva', '2005-04-15', 'Matemática', 8.5),
    ('Bruno Costa', '2004-12-20', 'História', 7.0),
    ('Carla Mendes', '2006-06-25', 'Ciências', 9.0),
    ('Daniel Ferreira', '2005-02-10', 'Geografia', 6.0),
    ('Eliana Souza', '2004-08-30', 'Português', 8.8),
    ('Fábio Almeida', '2005-11-18', 'Matemática', 7.7),
    ('Gabriela Santos', '2006-03-22', 'História', 9.2),
    ('Hugo Pereira', '2004-05-05', 'Ciências', 7.3);
    
SELECT * FROM tb_estudantes;

SELECT * 
FROM tb_estudantes
WHERE nota > 7.0;

SELECT * 
FROM tb_estudantes
WHERE nota < 7.0;  

UPDATE tb_estudantes
SET nota = 6
WHERE id = 8;

SELECT * FROM tb_estudantes

  