--A tabela com os dados que devem ser inseridos esta no arquivo: bases_15.png

CREATE DATABASE faculdade;

USE faculdade;

CREATE TABLE alunos (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    idade INT(3),
    sexo VARCHAR(10),
    uf CHAR(2),
    pais VARCHAR(30),
    PRIMARY KEY(id)
);

INSERT INTO alunos VALUES (NULL, 'Ana', 23, 'Feminino', 'SP','Brasil');
INSERT INTO alunos VALUES (NULL, 'Eduardo', 57, 'Masculino', 'MG','Brasil');
INSERT INTO alunos VALUES (NULL, 'Janice', 70, 'Feminino', 'MS','Brasil');
INSERT INTO alunos VALUES (NULL, 'Teo', 22, 'Masculino', 'RS','Brasil');
INSERT INTO alunos VALUES (NULL, 'Lucas', 18, 'Masculino', 'AC','Brasil');
INSERT INTO alunos VALUES (NULL, 'Joana', 14, 'Feminino', 'SP','Brasil');
INSERT INTO alunos VALUES (NULL, 'João', 18, 'Masculino', 'AP','Brasil');
INSERT INTO alunos VALUES (NULL, 'Claudia', 18, 'Feminino', 'RJ','Brasil');
INSERT INTO alunos VALUES (NULL, 'Iris', 69, 'Feminino', 'PR','Brasil');
INSERT INTO alunos VALUES (NULL, 'Esther', 60, 'Feminino', 'SC','Brasil');
INSERT INTO alunos VALUES (NULL, 'Yuri', 67, 'Masculino', 'AL','Brasil');
INSERT INTO alunos VALUES (NULL, 'Andressa', 36, 'Feminino', 'RO','Brasil');
INSERT INTO alunos VALUES (NULL, 'Juliana', 36, 'Feminino', 'PR','Brasil');
INSERT INTO alunos VALUES (NULL, 'Jean', 15, 'Masculino', 'DF','Brasil');
INSERT INTO alunos VALUES (NULL, 'Claudio', 26, 'Masculino', 'MT','Brasil');
INSERT INTO alunos VALUES (NULL, 'Teresa', 39, 'Feminino', 'TO','Brasil');
INSERT INTO alunos VALUES (NULL, 'Tadeu', 22, 'Masculino', 'MA','Brasil');
INSERT INTO alunos VALUES (NULL, 'Joaquim', 61, 'Masculino', 'SC','Brasil');
INSERT INTO alunos VALUES (NULL, 'Alessandra', 58, 'Feminino', 'MT','Brasil');
INSERT INTO alunos VALUES (NULL, 'Bruna', 48, 'Feminino', 'MS','Brasil');
INSERT INTO alunos VALUES (NULL, 'Beatriz', 46, 'Feminino', 'MG','Brasil');
INSERT INTO alunos VALUES (NULL, 'Cassandra', 21, 'Feminino', 'RS','Brasil');
INSERT INTO alunos VALUES (NULL, 'Leandro', 34, 'Masculino', 'PR','Brasil');
INSERT INTO alunos VALUES (NULL, 'Rubens', 55, 'Masculino', 'RR','Brasil');
INSERT INTO alunos VALUES (NULL, 'Reginaldo', 27, 'Masculino', 'CE','Brasil');

--Buscar valores que tenham o resultado feminino
SELECT nome, sexo FROM alunos WHERE sexo = 'Feminino';

--Sexo tenha valor diferente de feminino
SELECT nome,sexo FROM alunos WHERE sexo <> 'Feminino';

--Selecionar resultados que sejam maiores de 50 anos
SELECT nome, idade FROM alunos WHERE idade > 50;

--Selecionar ocorrências que tenham esses resultados
SELECT id,nome FROM alunos WHERE nome IN('Ana','João',
'Maria','Rafael');

--Selecionar ocorrências que não tenham esses resultados
SELECT id,nome FROM alunos WHERE nome NOT IN('Ana','João',
'Maria','Rafael');

--Selecionar resultados que estejam em um determinado parametro
SELECT nome, idade FROM alunos WHERE idade BETWEEN 20 AND 25;

--Selecionar nomes que comecem com a letra a
SELECT nome FROM alunos WHERE nome LIKE 'A%';

--Selecionar nomes que terminem com a letra a
SELECT nome FROM alunos WHERE nome LIKE '%A';


SELECT nome, idade, uf FROM alunos WHERE idade > 20
AND uf='SP';

SELECT nome, idade, uf FROM alunos WHERE idade > 20
AND (uf='SP' OR uf='RJ');
