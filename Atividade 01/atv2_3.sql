CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
preco decimal(6,2) NOT NULL,
categoria VARCHAR(255),
quantidade INT,
forma_pagamento VARCHAR(55)
);

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

SELECT * FROM tb_produtos;
