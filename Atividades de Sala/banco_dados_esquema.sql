
-- Criação das tabelas com suas restrições de integridade com base no estado inicial

CREATE TABLE FUNCIONARIO (
    Nome VARCHAR(50),
    Inicial CHAR(1),
    Sobrenome VARCHAR(50),
    Cpf CHAR(11) PRIMARY KEY,
    Datansc DATE,
    Endereco VARCHAR(100),
    Sexo CHAR(1),
    Salario DECIMAL(10, 2),
    Cpf_supervisor CHAR(11),
    Dnr INT,
    FOREIGN KEY (Cpf_supervisor) REFERENCES FUNCIONARIO(Cpf),
    FOREIGN KEY (Dnr) REFERENCES DEPARTAMENTO(Dnumero)
);

CREATE TABLE DEPARTAMENTO (
    Dnome VARCHAR(50),
    Dnumero INT PRIMARY KEY,
    Cpf_gerente CHAR(11),
    Data_inicio_gerente DATE,
    FOREIGN KEY (Cpf_gerente) REFERENCES FUNCIONARIO(Cpf)
);

CREATE TABLE LOCALIZACAO_DEP (
    Dnumero INT,
    Dlocal VARCHAR(50),
    PRIMARY KEY (Dnumero, Dlocal),
    FOREIGN KEY (Dnumero) REFERENCES DEPARTAMENTO(Dnumero)
);

CREATE TABLE TRABALHA_EM (
    Fcpf CHAR(11),
    Pnr INT,
    Horas DECIMAL(5, 2),
    PRIMARY KEY (Fcpf, Pnr),
    FOREIGN KEY (Fcpf) REFERENCES FUNCIONARIO(Cpf),
    FOREIGN KEY (Pnr) REFERENCES PROJETO(Pnumero)
);

CREATE TABLE PROJETO (
    Projnome VARCHAR(50),
    Pnumero INT PRIMARY KEY,
    Projlocal VARCHAR(50),
    Dnum INT,
    FOREIGN KEY (Dnum) REFERENCES DEPARTAMENTO(Dnumero)
);

CREATE TABLE DEPENDENTE (
    Cpf CHAR(11),
    Nome_dependente VARCHAR(50),
    Sexo CHAR(1),
    Datansc DATE,
    Parentesco VARCHAR(20),
    PRIMARY KEY (Cpf, Nome_dependente),
    FOREIGN KEY (Cpf) REFERENCES FUNCIONARIO(Cpf)
);
