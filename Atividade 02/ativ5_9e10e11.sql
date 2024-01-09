CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
descricao VARCHAR(250)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
descricao VARCHAR(250),
preco DECIMAL(8,2),
quantidade INT,
categoriasid BIGINT,
CONSTRAINT fk_produtos_categorias FOREIGN KEY (categoriasid)
REFERENCES tb_categorias(id)
);

-- inserindo 5 registros na tabela categorias
INSERT INTO tb_categorias (nome)
VALUES ('hidraulica'), ('mecanica'), ('arquitetonica'), ('sustentavel'), ('paisagista');

-- inserindo 8 registros na tabela produtos
INSERT INTO tb_produtos(nome,preco,categoriasid)
VALUES
('projeto de aquecimento', 150.00, 2),
('projeto de ventilaçao',100.00, 2),
('projeto de distribuiçao de espaços e ambientes',70.00,3),
('planejamento e design de areas externas',40.00,5),
('diensionamento de dutos e equipamentos',200.00,2),
('incorporaçao de praticas sustentaveis', 30.00, 4),
('uso de tecnologias verdes e eficiencia energetica', 100.00, 4),
('escolha de plantas e elementos paisagisticos',20.00,5);

-- filtrando os produtos cujo valor seja maior do que R$ 100,00.
SELECT * FROM tb_produtos WHERE preco>100;
-- filtrando os produtos cujo valor esteja no intervalo R$ 70,00 e R$ 150,00.
SELECT * FROM tb_produtos WHERE preco>=70 && preco<=150;
-- filtrando os produtos buscando todes os produtos que possuam a letra C no atributo nome
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

-- filtrando utilizando o INNER JOIN
SELECT tb_produtos.nome, tb_categorias.nome
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriasid = tb_categorias.id;

-- filtrando utilizando o INNER JOIN e uma categoria especifica
SELECT tb_produtos.nome, tb_categorias.nome
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriasid = tb_categorias.id
WHERE tb_categorias.nome = "sustentavel"
ORDER BY tb_categorias.nome ASC;

