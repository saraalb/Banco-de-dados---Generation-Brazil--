CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
ID BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
descricao VARCHAR(250)
);

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