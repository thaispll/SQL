/*DDL*
CREATE DATABASE nome_do_banco;
/*sempre clicar duas vezes para selecionar a tabela*/

CREATE TABLE nome_tabela(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telefone VARCHAR(15) NOT NULL,
    data_nascimento DATE NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
    /*TIMESTAMP: tipo de dado da coluna
    --DEFAULT CURRENT_TIMESTAMP: se não 
    ocorrer o registro de data e hora, 
    o BD vai fazer isso automaticamente*/
);

SHOW TABLES; 
/*Modificar tabela*/

ALTER TABLE nome_tabela 
ADD COLUMN endereco VARCHAR(255); 
/*Altere a tabela adicionando a coluna endereço*/

/*Excluir uma tabela*/
/*DROP TABLE nome_tabela;*/
