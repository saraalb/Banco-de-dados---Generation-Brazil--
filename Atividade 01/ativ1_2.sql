CREATE DATABASE db_sistemaRH;
use db_sistemaRH;
CREATE TABLE tb_colaboradores (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
cpf INT NOT NULL,
nome VARCHAR(255) NOT NULL,
identidade VARCHAR(15),
salario DECIMAL(7,2),
telefone BIGINT,
departamento VARCHAR(255),
cargo VARCHAR(255)
);

SELECT * FROM tb_colaboradores;