-- criacao do banco de dados
CREATE DATABASE db_ecommerce;
USE db_ecommerce;

-- criacao da tabela
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
preco decimal(6,2) NOT NULL,
categoria VARCHAR(255),
quantidade INT,
forma_pagamento VARCHAR(55)
);

-- inserindo valor na tabela
INSERT INTO tb_produtos (nome, preco, categoria, quantidade)
VALUES 
("Iphone 14", 8000.00, "Eletrônico", 100),
("Iphone 13 plus", 6600.00, "Eletrônico", 200),
("Ipad", 5000.00, "Eletrônico", 100),
("Ipod", 3000.00, "Eletrônico", 100),
("Iphone 13", 5000.00, "Eletrônico", 100),
("Airpods 2", 1000.00, "Eletrônico", 100),
("Apple watch", 3000.00, "Eletrônico", 100),
("Capinha Iphone", 100.00, "Eletrônico", 100);

-- filtrando produtos com valor menor que 500
SELECT * FROM tb_produtos WHERE preco>500;
-- filtrando produtos com valor maior que 500
SELECT * FROM tb_produtos WHERE preco<500;

-- atualizando um registro da tabela
UPDATE tb_produtos
SET quantidade = 120
WHERE id = 7;

SELECT * FROM tb_produtos;
