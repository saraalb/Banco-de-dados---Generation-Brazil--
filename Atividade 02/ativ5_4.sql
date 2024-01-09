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