-- Quantos produtos  temos cadastrado no sistema que custa mais de 1500 dolares?
SELECT COUNT(*) FROM products WHERE price > 1500;
-- Quantas pessoas temos com o sobrebome que incia com a letra p?
SELECT COUNT(*) FROM people WHERE last_name LIKE 'p%';

-- Em quantas  cidades únicas estão cadastrados nossos clientes?
SELECT COUNT(DISTINCT city) FROM people;    

-- QUAIS  SÃO AS CIDADES ÚNICAS QUE TEMOS CADASTRADAS EM NOSSO SISTEMA?
SELECT DISTINCT city FROM person.Address;

-- quantos produtos  vermelhos tem preco entre 500 a 1000 dolares?
 SELECT COUNT(*)
 FROM  Production.products
 WHERE color = 'red' AND price BETWEEN 500 AND 1000;

 
