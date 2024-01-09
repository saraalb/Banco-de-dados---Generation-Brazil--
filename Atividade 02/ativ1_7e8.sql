CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
descricao VARCHAR(255)
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
nivel INT,
poder_defesa INT,
poder_ataque INT
);

-- ALTER TABLE tb_personagens
-- ADD COLUMN id_classe BIGINT;

-- adicionando a foreign key em personagem
ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (id_classe) REFERENCES tb_classes(id);

-- alteracao da tabela. Coloquei NOT NULL como requisito de atributo
ALTER TABLE tb_personagens MODIFY nome VARCHAR(100) NOT NULL;

INSERT INTO tb_classes (nome, descricao) 
VALUES 
('Dunga', 'Um anão alegre e gentil, conhecido por sua simpatia.'),
('Zangado', 'Um anão mal-humorado, mas com um coração leal.'),
('Mestre', 'O anão mais sábio e experiente do grupo.'),
('Feliz', 'Um anão constantemente feliz, espalhando alegria por onde passa.'),
('Dorminhoco', 'Sempre sonolento e pronto para uma soneca a qualquer momento.'),
('Atchim', 'Um anão que tem o hábito de espirrar frequentemente.'),
('Mudo', 'O anão silencioso, que prefere se expressar por gestos e sinais.');

INSERT INTO tb_personagens (nome, nivel, poder_defesa, poder_ataque, id_classe) 
VALUES
('user1', 10, 80, 90, 1),
('user2', 12, 60, 95, 2),
('user3', 8, 70, 85, 3),
('user4', 15, 95, 75, 1),
('user5', 18, 75, 110, 3),
('user6', 11, 85, 80, 5),
('user7', 14, 100, 105, 6),
('user8', 9, 75, 85, 7);

SELECT * FROM tb_personagens
WHERE nome LIKE "%c%";
-- WHERE poder_defesa>1000 && poder_defesa<2000;












