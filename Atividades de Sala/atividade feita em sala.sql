Select P.nome
FROM Personagens P
JOIN Dragoes D ON P.id = D.id_personagem
WHERE D.nome LIKE 'S%';

SELECT D.nome 
FROM Dragoes D
WHERE D.id_personagem IS NULL;


SELECT P.nome AS personagem, B.nome AS batalha 
FROM Participantes_Batalhas PB
JOIN Personagens P ON PB.id_personagem = P.id
JOIN Batalhas B ON PB.id_batalha = B.id
WHERE PB.resultado = 'Vitória';

SELECT P.nome AS personagem, B.nome AS batalha, B.data, PB.resultado 
FROM Participantes_Batalhas PB
JOIN Personagens P ON PB.id_personagem = P.id
JOIN Batalhas B ON PB.id_batalha = B.id
ORDER BY B.data DESC;

SELECT P.nome AS personagem, P.casa, PB.resultado 
FROM Participantes_Batalhas PB
JOIN Personagens P ON PB.id_personagem = P.id
ORDER BY P.nome;

SELECT P1.nome AS personagem, P2.nome AS relacionado, RF.relacao 
FROM Relacoes_Familiares RF
JOIN Personagens P1 ON RF.id_personagem1 = P1.id
JOIN Personagens P2 ON RF.id_personagem2 = P2.id;

SELECT DISTINCT P.id 
FROM Participantes_Batalhas PB
JOIN Dragoes D ON PB.id_personagem = D.id_personagem
JOIN Personagens P ON P.id = D.id_personagem;



SELECT DISTINCT P.nome 
FROM Participantes_Batalhas PB
JOIN Dragoes D ON PB.id_personagem = D.id_personagem
JOIN Personagens P ON P.id = D.id_personagem;




SELECT D.id_personagem 
FROM Dragoes D
WHERE D.id_personagem NOT IN (
    SELECT DISTINCT PB.id_personagem 
    FROM Participantes_Batalhas PB
);

SELECT DISTINCT P.id 
FROM Personagens P
LEFT JOIN Participantes_Batalhas PB ON P.id = PB.id_personagem
LEFT JOIN Batalhas B ON PB.id_batalha = B.id
WHERE B.localizacao = 'King''s Landing' OR P.data_nascimento < '090-01-01';

SELECT DISTINCT P.nome 
FROM Personagens P
LEFT JOIN Participantes_Batalhas PB ON P.id = PB.id_personagem
LEFT JOIN Batalhas B ON PB.id_batalha = B.id
WHERE B.localizacao = 'King''s Landing' OR P.data_nascimento < '090-01-01';

