/*INSERT = inserir*/
INSERT INTO nome_do_banco.nome_tabela(nome, email, 
telefone, data_nascimento, endereco)
VALUES ('Ana Maria Braga', 'anamaria@gmail.com',
'01140028922','1949-04-01', 'Av. Dr. Chucri Zaidan, 46' );
/*UPDATE = atualizar*/
UPDATE nome_do_banco.nome_tabela
SET endereco = 'Rua I, 200. Água Limpa/VR'
WHERE id = 1;

/*UPDATE com mais de um valor*/
UPDATE nome_tabela
SET telefone = '24999999', email = 'anamariabraga@hotmail.com'
WHERE id=1;

/*DELETE*/
DELETE FROM nome_tabela 
WHERE email='anamariabraga@hotmail.com';
/*DELETE FROM nome_tabela*/
/*TRUNCATE TABLE nome_tabela*/
SELECT * FROM nome_tabela;

INSERT INTO nome_do_banco.nome_tabela(nome, email, 
telefone, data_nascimento, endereco)
VALUES ('Sílvio Santos', 'silvio@gmail.com',
'01140028922','1930-12-12', 'Osasco, São Paulo' );
INSERT INTO nome_do_banco.nome_tabela(nome, email, 
telefone, data_nascimento, endereco)
VALUES ('Alcione', 'alcione@gmail.com',
'01140028922','1949-04-01', 'Recreio, Zona Oeste do Rio' );

