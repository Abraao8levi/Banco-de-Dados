valor  between é usados para encontrar valor entre  um valor mínimo e valor máximo
é a mesma coisa que dizer:
SELECT * FROM tabela WHERE valor >= valor_minimo AND valor <= valor_maximo
SELECT *
FROM Production.Product
WHERE ListPrice NOT BETWEEN 50 AND 100; 

SELECT *
FROM  HumanResources.Employee
WHERE BusinessEntityID BETWEEN 1 AND 100;

order by  Hiredate
é usado para ordenar os dados em ordem crescente ou decrescente
é a mesma coisa que dizer:
SELECT * FROM tabela ORDER BY campo ASC/DESC
SELECT *
FROM Production.Product
ORDER BY ListPrice ASC;
SELECT *
FROM HumanResources.Employee 
ORDER BY HireDate DESC;