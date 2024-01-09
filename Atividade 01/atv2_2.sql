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

