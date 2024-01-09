-- criando banco de dados
CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

-- criando tabela categorias
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
descricao VARCHAR(250)
);