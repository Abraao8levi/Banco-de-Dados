SELECT *
FROM personagens p
FULL OUTER JOIN dragoes d
ON p.id = d.id_personagem;




select count(*)
from personagens;

select count( distinct id_personagem)
from dragoes;

select count(distinct cor)
from dragoes

select max(data_nascimento), min(data_nascimento)
from personagens


SELECT localizacao, COUNT(*) AS total_batalhas
FROM batalhas
GROUP BY localizacao;
-- insiram uma batalha 
-- em king´s landing com execeção 

-- obtenha para cada personagem, o nome
-- do personagem e aquantidade de
-- batalhas que ele participou
SELECT p.nome, COUNT(pb.id_batalha) AS quantidade_batalhas
FROM Personagens p
LEFT JOIN Participantes_Batalhas pb ON p.id = pb.id_personagem
GROUP BY p.nome
ORDER BY quantidade_batalhas DESC;

select p.nome, count(id_batalha)
from personagens p left join
participantes_batalhas pb
on p.id=pb.id_personagem
group by p.id, p.nome
having count(id_batalha)>=2;
-- quais foram as batalhas que
-- participaram pelo menos 2
-- pessoas?

SELECT b.nome, b.localizacao, COUNT(pb.id_personagem) AS quantidade_participantes
FROM Batalhas b
JOIN Participantes_Batalhas pb ON b.id = pb.id_batalha
GROUP BY b.id, b.nome, b.localizacao
HAVING COUNT(pb.id_personagem) >= 2;
