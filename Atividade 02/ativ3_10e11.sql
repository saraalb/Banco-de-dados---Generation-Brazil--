-- criando banco de dados
CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

-- criando tabela categorias
CREATE TABLE tb_categorias(
ID BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
descricao VARCHAR(250)
);

-- criando tabela produtos com fk
CREATE TABLE tb_produtos(
ID BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
preco DECIMAL(8,2) NOT NULL,
tarja VARCHAR(50) NOT NULL,
quantidade INT NOT NULL,
categoriaid BIGINT,
CONSTRAINT fk_produtos_categorias FOREIGN KEY(categoriaid)
REFERENCES tb_categorias(id)
);

-- inserindo valores na tabela categorias
INSERT INTO tb_categorias(nome)
VALUES('beleza'), ('higiene'), ('remedios'), 
('bebes'), ('comidas');

-- inserindo valores na tabela produtos
INSERT INTO tb_produtos(nome,preco,tarja,quantidade,categoriaid)
VALUES 
('agua termal', 100.00, 'sem tarja', 100, 1),
('chiclete', 4.99, 'sem tarja', 400, 5),
('alprazolam', 24.99, 'tarja preta', 1000, 3),
('fralda', 36.99, 'sem tarja', 100, 4),
('shampoo pantene', 29.99, 'sem tarja', 30, 2),
('acido retinoico', 60.00, 'tarja vermelha', 40, 3),
('neosoro', 7.99, 'tarja vermelha',500, 3),
('escova de dentes', 29.99, 'sem tarja', 40, 2);

-- filtrando os produtos cujo valor seja maior do que R$ 50,00.
SELECT * FROM tb_produtos WHERE preco>50;
-- filtrando os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.
SELECT * FROM tb_produtos WHERE preco>=5 && preco<=60;
-- filtrando os produtos buscando todes os produtos que possuam a letra C no atributo nome.
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

-- filtrando utilizando o INNER JOIN
SELECT tb_produtos.nome, tb_categorias.nome
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;

-- filtrando utilizando o INNER JOIN e uma categoria especifica
SELECT tb_produtos.nome, tb_produtos.preco, tb_categorias.nome
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id
WHERE tb_categorias.id=1;
