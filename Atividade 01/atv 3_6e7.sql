-- criacao do banco de dados
CREATE DATABASE db_escola;
USE db_escola;

-- criacao de tabela
CREATE TABLE tb_estudantes (
matricula BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
ano INT NOT NULL,
turma char NOT NULL,
media double,
telefone INT NOT NULL
);

-- insercao de dados na tabela
INSERT INTO tb_estudantes (nome, ano, turma, media, telefone)
VALUES 
("Sara", 1, "C", 7.01, 9999876),
("Rodrigo", 2, "A", 8.01, 554415),
("João", 3, "B", 6.50, 9555216),
("Maria", 4, "A", 10.00, 9858876),
("Barbara", 5, "A", 2.01, 96529876),
("Tom", 8, "B", 4.01, 9954576),
("Taina", 8, "C", 7.01, 99454576),
("José", 8, "C", 8.01, 9994576);

-- filtrando nome e media de estudantes com media maior do que 7
SELECT nome, media FROM tb_estudantes WHERE media > 7.0;
-- filtrando nome e media de estudantes com media menor do que 7
SELECT nome, media FROM tb_estudantes WHERE media < 7.0;

-- atualizando registro na tabela
UPDATE tb_estudantes 
SET turma = "C"
WHERE nome = "Barbara";

SELECT * FROM tb_estudantes;