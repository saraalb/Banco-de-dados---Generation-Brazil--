CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
sabor VARCHAR(50) NOT NULL,
descricao VARCHAR(50)
);

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






