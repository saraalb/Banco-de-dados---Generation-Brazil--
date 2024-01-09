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
-- inserindo 8 registros na tabela cursos
INSERT INTO tb_cursos(nome,mensalidade,categoriasid)
VALUES
('ciencia da computaçao', 1000.00, 4),
('medicina',6000.00, 2),
('letras',120.00,1),
('estatistica',300.00,3),
('ciencia de dados', 600.00,4),
('carpintaria',5000.00,5),
('engenharia ambiental',3000.00,3),
('filosofia',500.00,1);

-- filtrando os cursos cuja mensalidade seja maior do que R$ 500,00.
SELECT * FROM tb_cursos WHERE mensalidade>500;
-- filtrando os cursos cuja mensalidade esteja no intervalo R$ 600,00 e R$ 1000,00.
SELECT * FROM tb_cursos WHERE mensalidade>=600 && mensalidade<=1000;
-- filtrando buscando todes os cursos que possuam a letra J no atributo nome
SELECT * FROM tb_cursos WHERE nome LIKE "%j%";

-- filtrando utilizando o INNER JOIN
SELECT tb_cursos.nome, tb_cursos.mensalidade, tb_categorias.nome
FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoriasid = tb_categorias.id;

-- filtrando utilizando o INNER JOIN e uma categoria especifica
SELECT tb_cursos.nome, tb_cursos.mensalidade, tb_categorias.nome
FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoriasid = tb_categorias.id
WHERE tb_categorias.id = 4
ORDER BY tb_cursos.nome DESC;


