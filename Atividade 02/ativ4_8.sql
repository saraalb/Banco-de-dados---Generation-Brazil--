-- criacao do banco de dados
CREATE DATABASE db_cidade_dos_vegetais;
USE db_cidade_dos_vegetais;

-- criacao da tabela categorias
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
descricao VARCHAR(250)
);

-- criacao da tabela produtos
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
descricao VARCHAR(250),
quantidade INT NOT NULL,
preco DECIMAL(8,2),
categoriasid BIGINT,
CONSTRAINT fk_produtos_categorias FOREIGN KEY (categoriasid)
REFERENCES tb_categorias(id)
);

-- Inserindo 5 registros na tabela tb_categorias
INSERT INTO tb_categorias (nome)
VALUES('frutas'),('legumes'),('leguminosas'),('raizes'),('verduras');

-- Inserindo 8 registros na tabela tb_produtos
INSERT INTO tb_produtos(nome,quantidade,preco,categoriasid)
VALUES
('feijao', 1, 58.99,3),
('maçã',10,103.99,1),
('laranja',100,140.99,1),
('alface',800,100.99,5),
('amendoim',1,90.00,3),
('macaxeira',7,70.00,4),
('cenoura',90,49.00,2),
('abacaxi',100,100.00,1);

-- filtrando os produtos cujo valor seja maior do que R$ 50,00.
SELECT * FROM tb_produtos WHERE preco>50;
-- filtrando os produtos cujo valor esteja no intervalo R$ 50,00 e R$ 150,00.
SELECT * FROM tb_produtos WHERE preco>=50 && preco<=150;
-- filtrando os produtos buscando todes os produtos que possuam a letra C no atributo nome
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

-- filtrando utilizando o INNER JOIN
SELECT tb_produtos.nome, tb_produtos.preco, tb_categorias.nome
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriasid = tb_categorias.id;


