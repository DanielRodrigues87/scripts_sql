CREATE DATABASE escola2;

USE escola2;

CREATE TABLE estudantes (
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(50),
	idade INT(3),
	PRIMARY KEY(id)
);

INSERT INTO estudantes (id,nome,idade) VALUES (NULL,'Fernanda',20);
INSERT INTO estudantes (id,nome,idade) VALUES (NULL,'Maria',19);
INSERT INTO estudantes (id,nome,idade) VALUES (NULL,'Gabriel',21);
INSERT INTO estudantes (id,nome,idade) VALUES (NULL,'Antônio',23);
INSERT INTO estudantes (id,nome,idade) VALUES (NULL,'Marcos',21);
INSERT INTO estudantes (id,nome,idade) VALUES (NULL,'Sofia',22);
INSERT INTO estudantes (id,nome,idade) VALUES (NULL,'Laura',18);
INSERT INTO estudantes (id,nome,idade) VALUES (NULL,'Bruna',20);

CREATE TABLE professores (
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(50),
	idade INT(3),
	PRIMARY KEY(id)
);
INSERT INTO professores (id,nome,idade) VALUES (NULL,'Roberto',40);
INSERT INTO professores (id,nome,idade) VALUES (NULL,'laura',35);
INSERT INTO professores (id,nome,idade) VALUES (NULL,'José',38);
INSERT INTO professores (id,nome,idade) VALUES (NULL,'Maria',45);
INSERT INTO professores (id,nome,idade) VALUES (NULL,'Antônio',50);
INSERT INTO professores (id,nome,idade) VALUES (NULL,'Geralda',32);
INSERT INTO professores (id,nome,idade) VALUES (NULL,'Marcos',45);
INSERT INTO professores (id,nome,idade) VALUES (NULL,'Otávio',30);

--Esta aula é complementada pelo arquivo inner.pdf que está nesta pasta

--Neste primeiro exemplo, vamos usar o INNER JOIN para consultar o id e o nome dos registros das tabelas “estudantes” e “professores” que têm dados equivalentes na coluna “nome”. 

--Observe que, na sintaxe abaixo, acrescentamos um “e.” e um “p.” antes do nome das colunas da tabela e que, nas linhas seguinte,s usamos as expressões “estudantes AS e” e “professores AS p”. Isso é uma forma de definir uma espécie de “pseudônimo” para as tabelas. Dessa forma elas podem ser diferenciadas durante a execução.

--Já na última linha, usamos a expressão ON para indicar qual coluna das tabelas deve ter seus dados comparados.

SELECT e.id, e.nome, p.id, p.nome
 FROM estudantes AS e
 INNER JOIN professores AS p
 ON e.nome = p.nome; 
 
--O LEFT JOIN é usado para retornar todos os registros da tabela esquerda, além dos registros da tabela à direita que têm valores em comum com a tabela esquerda. Veja a ilustração a seguir para entender melhor:

--Observe que o código a seguir é bastante parecido com o do exemplo anterior. No entanto, como queremos apenas os dados da tabela esquerda mais os registros em comum da tabela direita, utilizamos o operador LEFT JOIN.

SELECT e.nome, p.nome
 FROM estudantes AS e
 LEFT JOIN professores AS p
 ON e.nome = p.nome; 
 
--Já com o LEFT EXCLUDING JOIN é possível retornar todos os dados da tabela esquerda que não têm valores correspondentes na tabela da direita. Na imagem mostrada abaixo, vemos uma representação desse tipo de resultado. 

--Prosseguindo com nossa demonstração, repare que agora acrescentamos a cláusula WHERE no fim do comando. Dessa forma, definimos um filtro para excluir do retorno os dados em comum entre as tabelas.

SELECT e.nome, p.nome
 FROM estudantes AS e
 LEFT JOIN professores AS p
 ON e.nome = p.nome
 WHERE p.nome IS NULL; 
 
--Ao usar o RIGHT JOIN, podemos retornar todos os valores da tabela direita juntamente com os registros em comum na tabela esquerda. A seguir, observe o exemplo gráfico desse retorno:

--Dessa vez, como queremos retornar os dados da coluna “nome” na tabela direita mais os registros com valores repetidos na tabela esquerda, usamos o operador RIGHT JOIN no código.

SELECT e.nome, p.nome
 FROM estudantes AS e
 RIGHT JOIN professores AS p
 ON e.nome = p.nome; 
 
--Como é mostrado na figura abaixo, o RIGHT EXCLUDING JOIN é responsável por retornar os dados da tabela da direita que não têm valores iguais na tabela esquerda.

--Novamente, para excluir os dados com valores em comum do retorno, usamos um filtro na cláusula WHERE. Porém, dessa vez os dados serão filtrados na tabela “estudantes”.

SELECT e.nome, p.nome
 FROM estudantes AS e
 RIGHT JOIN professores AS p
 ON e.nome = p.nome
 WHERE e.nome IS NULL; 
 
--O FULL JOIN, também conhecido como FULL OUTER JOIN, retorna todos os dados de ambas as tabelas quando há uma relação entre elas. 

--Na sintaxe abaixo, observe que agora usamos o comando FULL OUTER JOIN para retornar todos os dados da coluna “nome” comparando a igualdade dos valores desse campo de ambas as tabelas.

SELECT e.nome, p.nome
 FROM estudantes AS e
 FULL OUTER JOIN professores AS p
 ON e.nome = p.nome; 
 
--Com o FULL EXCLUDING JOIN podemos retornar todos os registros que não têm valores repetidos entre as tabelas. Ou seja, ele exclui do retorno todos os dados duplicados

SELECT e.nome, p.nome
 FROM estudantes AS e
 FULL OUTER JOIN professores AS p
 ON e.nome = p.nome
 WHERE e.nome IS NULL OR p.nome IS NULL; 
 
--Com o comando SQL CROSS JOIN é possível fazer um produto cartesiano entre as tabelas. Isso significa que para cada linha da tabela esquerda ele vai retornar todas as linhas da tabela direita, ou vice-versa.

--Neste último exemplo, vamos fazer o produto cartesiano entre os campos “nome” e “idade” das tabelas “estudantes” e “professores”. Contudo, para limitar o tamanho do retorno, vamos definir um filtro para consultar apenas os registros com id igual a 1 em ambas as tabelas.

SELECT e.idade, e.nome, p.idade, p.nome
 FROM estudantes AS e
 CROSS JOIN professores AS p
 WHERE e.id = 1 OR p.id = 1;