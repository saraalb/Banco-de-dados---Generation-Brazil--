CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes (
matricula BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
ano INT NOT NULL,
turma char NOT NULL,
media double,
telefone INT NOT NULL
);
