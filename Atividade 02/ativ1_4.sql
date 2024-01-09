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




