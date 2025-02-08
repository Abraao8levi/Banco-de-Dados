SELECT 
    SUM(Salario) AS Soma_Salarios,
    MAX(Salario) AS Salario_Maximo,
    MIN(Salario) AS Salario_Minimo,
    AVG(Salario) AS Media_Salarios
FROM FUNCIONARIO;
