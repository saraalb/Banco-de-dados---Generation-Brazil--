-- criacao do banco de dados
CREATE DATABASE db_cidade_dos_vegetais;
USE db_cidade_dos_vegetais;

-- criacao da tabela categorias
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
descricao VARCHAR(250)
);

-- criacao da tabela produtos
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
descricao VARCHAR(250),
quantidade INT NOT NULL,
preco DECIMAL(8,2),
categoriasid BIGINT,
CONSTRAINT fk_produtos_categorias FOREIGN KEY (categoriasid)
REFERENCES tb_categorias(id)
);

-- Inserindo 5 registros na tabela tb_categorias
INSERT INTO tb_categorias (nome)
VALUES('frutas'),('legumes'),('leguminosas'),('raizes'),('verduras');
