--Mostrar a base de dados
SHOW DATABASES;

--Comando para criar um banco de dados
CREATE DATABASE loja_de_carros;

--Comando para conectar ao banco de dados criado
USE loja_de_carros;

--Comando para criar tabelas dentro do banco de dados
CREATE TABLE carro(
    id_carro INT NOT NULL AUTO_INCREMENT,
    modelo VARCHAR(50),
    cor VARCHAR(15),
    ano SMALLINT(4),
    PRIMARY KEY(id_carro)
);

--Comando para visualizar as colunas de uma tabela
DESC carro;

--Comando para ver todas as informações das tabelas
SELECT * FROM carro;

--Comando para inserir informações na tabela
INSERT INTO carro (modelo,cor,ano) VALUES ('Corsa','Vermelho',2003);
INSERT INTO carro (modelo,cor,ano) VALUES ('Fusca','Branco',1966);
INSERT INTO carro (modelo,cor,ano) VALUES ('Palio','Prata',2009);
INSERT INTO carro (modelo,cor,ano) VALUES ('Gol','Branco',2008);

--Recuperar apenas os registros de carros brancos
SELECT * FROM carro WHERE cor='Branco';

--Recuperar apenas os registros de carros brancos do ano de 1966
SELECT * FROM carro WHERE cor='Branco' AND ano=1966;

--Recuperar apenas os registros de carros brancos ou pratas
SELECT * FROM carro WHERE cor='Branco' OR cor='Prata';

--Recuperar apenas os registros de carros produzidos a partir do ano 2000
SELECT * FROM carro  WHERE ano >=2000;

--Recuperar apenas registros de carros que não foram produzidos em 2009
SELECT * FROM carro WHERE ano !=2009;

--Alterar o modelo do Gol para Gol 2008
UPDATE carro SET modelo='Gol 2008' WHERE id_carro = 4;

--Alterar a cor de todos os carros brancos para branco gelo
UPDATE carro SET cor='Branco Gelo' WHERE cor='Branco';

--Alterar a cor de branco gelo para branco neve nos carros fabricados a partir do ano 2000
UPDATE carro SET cor='Branco Neve' WHERE cor='Branco Gelo' AND ano >= 2000;

--Excluir apenas o carro que tenha o codigo 4
DELETE FROM carro WHERE id_carro = 4;

--Excluir todos os registros de carro
DELETE FROM carro;