INSERT INTO Personagens (nome, data_nascimento, data_falecimento, casa)
VALUES 
('Rhaenyra Targaryen', '097-11-09', '133-11-10', 'Targaryen'),
('Daemon Targaryen', '081-04-09', NULL, 'Targaryen'),
('Viserys I Targaryen', '077-05-03', '129-05-12', 'Targaryen'),
('Alicent Hightower', '088-11-07', '133-12-12', 'Hightower'),
('Aegon II Targaryen', '107-11-10', '131-05-03', 'Targaryen');

INSERT INTO Dragoes (nome, cor, tamanho, id_personagem)
VALUES 
('Syrax', 'Amarelo', 'Grande', 1),
('Caraxes', 'Vermelho', 'Grande', 2),
('Vhagar', 'Bronze com Verde', 'Enorme', NULL),
('Sunfyre', 'Dourado', 'Grande', 5);

INSERT INTO Relacoes_Familiares (id_personagem1, id_personagem2, relacao)
VALUES 
(1, 3, 'Filha'),
(3, 2, 'Irmão'),
(3, 4, 'Esposa'),
(4, 5, 'Mãe'),
(2, 1, 'Tio/Esposo');

INSERT INTO Batalhas (nome, data, localizacao)
VALUES 
('Batalha de Ponta Tempestade', '130-03-05', 'Ponta Tempestade'),
('Batalha de Poço de Dragão', '131-08-02', 'King''s Landing');


INSERT INTO Participantes_Batalhas (id_batalha, id_personagem, resultado)
VALUES 
(1, 5, 'Vitória'),
(1, 2, 'Derrota'),
(2, 1, 'Derrota'),
(2, 5, 'Vitória');

INSERT INTO Personagens (nome, data_nascimento, data_falecimento, casa)
VALUES 
('Otto Hightower', '070-01-01', '133-01-01', 'Hightower'),
('Larys Strong', '092-05-12', '133-09-01', 'Strong'),
('Criston Cole', '090-07-15', NULL, 'Cole'),
('Aemond Targaryen', '110-01-10', NULL, 'Targaryen'),
('Helaena Targaryen', '110-11-23', NULL, 'Targaryen');

INSERT INTO Dragoes (nome, cor, tamanho, id_personagem)
VALUES 
('Dreamfyre', 'Prata', 'Grande', 6),  -- Associando a Helaena Targaryen
('Balerion', 'Negro', 'Enorme', NULL),  -- Sem personagem associado
('Meleys', 'Vermelho', 'Grande', 4),  -- Associando a Rhaenyra Targaryen
('Vermithor', 'Dourado', 'Grande', NULL);  -- Sem personagem associado


INSERT INTO Relacoes_Familiares (id_personagem1, id_personagem2, relacao)
VALUES 
(6, 4, 'Irmã'),  -- Helaena Targaryen e Aemond Targaryen
(7, 6, 'Pai'),   -- Otto Hightower e Helaena Targaryen
(8, 7, 'Esposa'), -- Criston Cole e Alicent Hightower
(9, 5, 'Irmão'),  -- Aemond Targaryen e Helaena Targaryen
(10, 9, 'Tio'),   -- Larys Strong e Aemond Targaryen
(10, 7, 'Amigo'); -- Larys Strong e Otto Hightower

INSERT INTO Batalhas (nome, data, localizacao)
VALUES 
('Batalha do Vale', '133-02-15', 'Vale de Arryn'),
('Batalha da Pedra do Dragão', '132-10-10', 'Pedra do Dragão'),
('Batalha da Floresta de Ninho', '133-05-20', 'Floresta de Ninho');


INSERT INTO Participantes_Batalhas (id_batalha, id_personagem, resultado)
VALUES 
(1, 8, 'Vitória'),  -- Criston Cole na Batalha do Vale
(1, 6, 'Derrota'),  -- Otto Hightower na Batalha do Vale
(2, 7, 'Vitória'),  -- Alicent Hightower na Batalha da Pedra do Dragão
(3, 9, 'Derrota'),  -- Aemond Targaryen na Batalha da Floresta de Ninho
(3, 10, 'Vitória'); -- Larys Strong na Batalha da Floresta de Ninho





