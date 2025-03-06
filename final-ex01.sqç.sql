CREATE TABLE Professor (
    id INT PRIMARY KEY NOT NULL,
    nome VARCHAR(50),
    sobrenome VARCHAR(50),
    id_disciplina INT,
    cpf VARCHAR(11),
    senha VARCHAR(50)
);

CREATE TABLE Disciplinas (
    id INT PRIMARY KEY NOT NULL,
    nome VARCHAR(50),
    id_professor INT
);

CREATE TABLE Alunos (
    id INT PRIMARY KEY NOT NULL,
    nome VARCHAR(50),
    sobrenome VARCHAR(50),
    cpf VARCHAR(11),
    senha VARCHAR(50)
);

INSERT INTO Professor(id, nome, sobrenome, cpf, senha)
VALUES
(1, 'João', 'Silva', '12345678901', 'senha123'),
(2, 'Maria', 'Souza', '98765432109', 'senha456'),
(3, 'Pedro', 'Oliveira', '11122233344', 'senha789'),
(4, 'Ana', 'Gomes', '44455566677', 'senha012'),
(5, 'Carlos', 'Pereira', '77788899900', 'senha345');

INSERT INTO Disciplinas(nome, id_professor)
VALUES 
('Lógica de Programação', 1),
  ('Fundamentos de TI', 2),
  ('Análise de Dados', 3),
  ('OOP', 4),
  ('Inteligência artificial', 5);
  INSERT INTO Alunos(nome, sobrenome, cpf, senha, turma)
VALUES
  ('Luís', 'Fernandes', '55566677788', 'senha111', 'A'),
  ('Beatriz', 'Costa', '88899900011', 'senha222', 'B'),
  ('Gabriel', 'Santos', '22233344455', 'senha333', 'A'),
  ('Rafaela', 'Moraes', '66677788899', 'senha444', 'C'),
  ('Leonardo', 'Lima', '99900011122', 'senha555', 'B');
  
SELECT * FROM minha_base_de_dados.alunos;
SELECT * FROM minha_base_de_dados.disciplinas;
SELECT * FROM minha_base_de_dados.professor;

DROP TABLE alunos;
DROP TABLE disciplinas;
DROP TABLE professor;

DROP DATABASE minha_base_de_dados;
SELECT * FROM minha_base_de_dados;
