SELECT p.nome AS personagem, d.nome AS dragao
FROM personagens p
JOIN dragoes d ON p.id = d.personagem_id;
