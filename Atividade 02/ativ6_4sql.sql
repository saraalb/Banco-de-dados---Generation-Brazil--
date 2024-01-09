-- criando banco de dados
CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

-- criando tabela categorias
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
descricao VARCHAR(250)
);

-- criando tabela cursos
CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
mensalidade DECIMAL(8,2),
descricao VARCHAR(250),
qtd_alunos INT,
categoriasid BIGINT,
CONSTRAINT fk_cursos_categorias FOREIGN KEY (categoriasid)
REFERENCES tb_categorias(id)
);

-- inserindo 5 registros na tabela categorias
INSERT INTO tb_categorias(nome)
VALUES ('humanas'),('saude'),('exatas'),('ti'),('outros');





