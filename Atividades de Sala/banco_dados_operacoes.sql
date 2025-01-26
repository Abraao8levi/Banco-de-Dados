
-- a. Inserir um novo funcionário
INSERT INTO FUNCIONARIO VALUES ('Roberto', 'F', 'Santos', '94377554355', '1972-06-21', 'Rua Benjamin, 34, Santo André, SP', 'M', 58.000, '88866555576', 1);

-- b. Inserir um novo projeto
INSERT INTO PROJETO VALUES ('ProdutoA', 4, 'Santo André', 2);

-- c. Inserir um novo departamento
INSERT INTO DEPARTAMENTO VALUES ('Producao', 4, '94377554355', '2007-10-01');

-- d. Inserir uma nova tupla em TRABALHA_EM
INSERT INTO TRABALHA_EM VALUES ('67767898944', NULL, 40.0); -- Violação esperada na chave estrangeira para Pnr

-- e. Inserir uma nova tupla em DEPENDENTE
INSERT INTO DEPENDENTE VALUES ('45345345376', 'João', 'M', '1990-12-12', 'Marido'); -- Violação semântica, parente não faz sentido

-- f. Excluir tuplas de TRABALHA_EM com Fcpf = '33344555587'
DELETE FROM TRABALHA_EM WHERE Fcpf = '33344555587';

-- g. Excluir a tupla de FUNCIONARIO com Cpf = '98765432168'
DELETE FROM FUNCIONARIO WHERE Cpf = '98765432168'; -- Violação esperada devido a dependências em DEPENDENTE e outros

-- h. Excluir a tupla de PROJETO com Projnome = 'ProdutoX'
DELETE FROM PROJETO WHERE Projnome = 'ProdutoX'; -- Violação esperada devido à dependência em TRABALHA_EM

-- i. Modificar Cpf_gerente e Data_inicio_gerente na tabela DEPARTAMENTO
UPDATE DEPARTAMENTO SET Cpf_gerente = '12345678966', Data_inicio_gerente = '2007-10-01' WHERE Dnumero = 5;

-- j. Modificar Cpf_supervisor da tupla FUNCIONARIO
UPDATE FUNCIONARIO SET Cpf_supervisor = '94377554355' WHERE Cpf = '99988777767';

-- k. Modificar o atributo Horas em TRABALHA_EM
UPDATE TRABALHA_EM SET Horas = 5.0 WHERE Fcpf = '99988777767' AND Pnr = 10;
