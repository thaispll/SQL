CREATE DATABASE IF NOT EXISTS empresa;
USE empresa;
 
 CREATE TABLE Departamentos (
 Codigo INT AUTO_INCREMENT PRIMARY KEY,
 Nome VARCHAR(255) NOT NULL,
 Localizacao VARCHAR(255) NOT NULL,
 CodigoFuncionarioGerente INT
 );
 
 CREATE TABLE Funcionarios (
	Codigo INT AUTO_INCREMENT PRIMARY KEY,
    PrimeiroNome VARCHAR(100) NOT NULL,
    SegundoNome VARCHAR(100) NOT NULL,
    UltimoNome VARCHAR(100) NOT NULL,
    DataNasci DATE NOT NULL,
    CPF VARCHAR(11) UNIQUE NOT NULL,
    RG VARCHAR(10) UNIQUE NOT NULL,
    Endereco VARCHAR(255) NOT NULL,
    CEP VARCHAR(8) NOT NULL,
    Cidade VARCHAR(100) NOT NULL,
    Fone VARCHAR(13) NOT NULL,
    CodigoDepartamento INT,
    Funcao VARCHAR(100) NOT NULL,
    Salario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (CodigoDepartamento) REFERENCES Departamentos(Codigo)
);

ALTER TABLE Departamentos
ADD CONSTRAINT fk_GerenteDepartamento
FOREIGN KEY (CodigoFuncionarioGerente) REFERENCES Funcionarios(Codigo);

INSERT INTO Departamentos (Nome, Localizacao, CodigoFuncionarioGerente)
VALUES
	('RH', 'São Paulo',NULL),
	('TI', 'Rio de Janeiro',NULL),    
	('Vendas', 'São Paulo',NULL),  
	('Marketing', 'Curitiba',NULL),  
	('Financeiro', 'Belo Horizonte',NULL); 

INSERT INTO Funcionarios (
    PrimeiroNome, SegundoNome, UltimoNome, DataNasci, CPF, RG, Endereco, CEP, Cidade, Fone, CodigoDepartamento, Funcao, Salario
)
VALUES
    ('João', 'Antônio', 'Silva', '1990-01-01', '12345678901', '1234567', 'Rua Teste, 123', '01001-000', 'São Paulo', '(11) 1234-5678', 1, 'Gerente RH', 8000.00),
    ('Maria', NULL, 'Oliveira', '1992-02-02', '23456789012', '2345678', 'Rua Teste, 456', '20001-000', 'Rio de Janeiro', '(21) 5678-9012', 2, 'Gerente TI', 9000.00),
    ('Pedro', 'Henrique', 'Santos', '1991-03-03', '34567890123', '3456789', 'Rua Teste, 789', '01002-000', 'São Paulo', '(11) 9012-3456', 3, 'Gerente Vendas', 8500.00),
    ('Ana', 'Beatriz', 'Lima', '1993-04-04', '45678901234', '4567890', 'Rua Teste, 012', '80001-000', 'Curitiba', '(41) 1234-5678', 4, 'Gerente Marketing', 8200.00),
    ('Carlos', NULL, 'Gomes', '1994-05-05', '56789012345', '5678901', 'Rua Teste, 345', '30001-000', 'Belo Horizonte', '(31) 5678-9012', 5, 'Gerente Financeiro', 8800.00);

ALTER TABLE Funcionarios
MODIFY COLUMN CEP VARCHAR(9) NOT NULL;

ALTER TABLE Funcionarios
MODIFY COLUMN Fone VARCHAR(14) NOT NULL;

ALTER TABLE Funcionarios
MODIFY COLUMN SegundoNome VARCHAR(100);

DELETE FROM Funcionarios;
SET SQL_SAFE_UPDATES = 0;

SELECT * FROM Funcionarios;
