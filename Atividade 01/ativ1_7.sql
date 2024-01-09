-- criacao do BD
CREATE DATABASE db_sistemaRH;
use db_sistemaRH;

-- criacao da tabela
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

-- inserindo valores na tabela
INSERT INTO tb_colaboradores(cpf, nome, identidade, salario, telefone, departamento, cargo)
VALUES
("1111111111", "Sara Albuquerque", "778888 SSPPE", 3000.00, 819999744, "TI - Dados", "Cientista de dados - Deep learning"),
("222222222","Tom Salvador", "1111222 SSPPE", 20000.00, 8199993444, "TI - Desenvolvimento", "Engenheiro de software"), 
("333333333","Barbara Alves", "9999222 SPPPE", 25000.00, 819999955, "TI - Front-end", "Webdesigner"),
("444444444","Gloria Ferreira", "8887777 SSPPE", 35000.00, 818888844, "TI - Administracao", "Gerente de TI"),
("555555555","Luiz Fonseca", "7766622 SSPPE", 28000.00, 81999988876, "TI - Dados", "DBA");

-- retornar funcionarios com salario maior que 2mil
SELECT * FROM tb_colaboradores WHERE salario>2000;
-- retornar funcionarios com salario menor que 2mil
SELECT * FROM tb_colaboradores WHERE salario<2000;

-- atualizando algum registro da tabela
UPDATE tb_colaboradores 
SET cargo = "Designer UX"
WHERE id = 3;

SELECT * FROM tb_colaboradores;