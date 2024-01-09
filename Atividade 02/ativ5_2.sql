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