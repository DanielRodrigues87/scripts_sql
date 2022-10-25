CREATE DATABASE livraria2;

--Comando para listar a base de dados
SHOW DATABASES;

--Comando para conectar ao banco criado
USE livraria2;

--Comando para criar as tabelas
CREATE TABLE livros (
    livro VARCHAR(100),
    autor VARCHAR(100),
    sexo CHAR(1),
    paginas INT(5),
    editora VARCHAR(30),
    valor FLOAT(10,2),
    uf CHAR(2),
    ano SMALLINT(4)
);

--Comando para descrever as colunas de uma tabela
DESC livros;

--Comando para inserir valores na tabela
INSERT INTO livros VALUES('Cavaleiro Real','Ana Claudia','F',465,
'Atlas',49.9,'RJ',2009);
INSERT INTO livros VALUES('SQL para leigos','João Nunes','M',450,
'Addison',98,'SP',2018);
INSERT INTO livros VALUES('Receitas Caseiras','Celia Tavares','F',
210,'Atlas',45,'RJ',2008);
INSERT INTO livros VALUES('Pessoas Efetivas','Eduardo Santos','M',
390,'Beta',78,'RJ',2018);
INSERT INTO livros VALUES('Habitos Saudáveis','Eduardo Santos','M',
630,'Beta',150,'RJ',2019);
INSERT INTO livros VALUES('A Casa Marrom','Hermes Macedo','M',
250,'Bubba',60,'MG',2016);
INSERT INTO livros VALUES('Estacio Querido','Geraldo Francisco','M',
310,'Insignia',100,'ES',2015);
INSERT INTO livros VALUES('Pra sempre amigas','Leda Silva','F',
510,'Insignia',78,'ES',2011);
INSERT INTO livros VALUES('Copas Inesqueciveis','Marco Alcantara','M',
200,'Larson',130,'RS',2018);
INSERT INTO livros VALUES('O poder da mente','Clara Mafra','F',
120,'Continental',56,'SP',2017);

--Comando para mostrar todos os dados da tabela
SELECT * FROM livros;

--Trazer o nome do livro e o nome da editora
SELECT livro,editora FROM livros;

--Trazer o nome do livro e uf dos livros publicados por homens
SELECT livro, autor,uf FROM livros WHERE sexo = 'M';

--Trazer o nome, paginas e sexo dos autores femininos
SELECT livro, autor,paginas FROM livros WHERE sexo = 'F';

--Operadores lógicos OR-> para que a sáida da query seja verdadeira,basta apenas uma condição seja verdadeira.
--AND->para que a saída seja verdadeira todas as condições precisam ser verdadeiras.

SELECT autor,sexo,uf FROM livros WHERE sexo = 'M'
AND uf = 'SP'
OR uf = 'RJ';

SELECT autor, sexo, uf
FROM livros
WHERE
sexo='M' AND (uf='SP' OR uf = 'RJ');

SELECT autor,sexo,uf
FROM livros
WHERE sexo='M'
AND uf='SP'
AND paginas > 100;