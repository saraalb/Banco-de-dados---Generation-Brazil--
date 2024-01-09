-- criacao do banco de dados
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

-- criacao da tabela categorias
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
sabor VARCHAR(50) NOT NULL,
descricao VARCHAR(50)
);

-- criacao da tabela pizzas
CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
NOME VARCHAR(100) NOT NULL,
DESCRICAO VARCHAR(250),
PRECO DECIMAL(8,2),
TAMANHO char,
BORDA BOOLEAN,
categoriasid BIGINT,
CONSTRAINT FK_pizzas_categorias FOREIGN KEY(categoriasid) 
REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;

-- inserindo valores na tabela categoria
INSERT INTO tb_categorias (sabor) 
VALUES
('salgada'), ('doce'), ('vegetariana'), 
('sem gluten'), ('sem lactose');

-- inserindo valores na tabela pizza
INSERT INTO tb_pizzas (NOME, DESCRICAO, PRECO, TAMANHO, BORDA, categoriasid) 
VALUES
    ('Calabresa Tradicional', 'Pizza com calabresa, cebola e azeitonas.', 45.90, 'M', true, 1),
    ('Margarita Clássica', 'Pizza com tomate, muçarela e manjericão.', 39.90, 'G', false, 2),
    ('Brigadeiro Delicioso', 'Pizza doce com brigadeiro e morangos.', 29.90, 'P', true, 3),
    ('Quatro Queijos Premium', 'Pizza com muçarela, parmesão, gorgonzola e catupiry.', 42.90, 'G', true, 4),
    ('Banana Canela Especial', 'Pizza doce com banana, canela e chocolate.', 52.90, 'M', false, 5),
    ('Vegetariana Suprema', 'Pizza com uma variedade de legumes e queijos.', 100.90, 'G', true, 1),
    ('Frango Pesto Premium', 'Pizza de frango com pesto de manjericão.', 55.90, 'G', false, 2),
    ('Funghi Trufado', 'Pizza com funghi e azeite trufado.', 120.90, 'M', true, 1);
    
 -- filtrando pizzas que o valor seja maior do que 45 reais
SELECT * FROM tb_pizzas WHERE preco>45.00;
 -- filtrando pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM tb_pizzas WHERE preco>=50 && preco<=100;
-- filtrando pizzas que possuam a letra M no atributo nome
SELECT * FROM tb_pizzas WHERE nome LIKE '%m%';








