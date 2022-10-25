CREATE DATABASE daniel_variedades;

USE daniel_variedades;

CREATE TABLE produto (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(60),
    preco FLOAT(10,2),
    id_categoria INT(3),
    PRIMARY KEY(id)
);

INSERT INTO produto (id,nome,preco,id_categoria) VALUES (NULL,'Bola',35.00,1);
INSERT INTO produto (id,nome,preco,id_categoria) VALUES (NULL,'Patinete',120.00,1);
INSERT INTO produto (id,nome,preco,id_categoria) VALUES (NULL,'Carrinho',15.00,1);
INSERT INTO produto (id,nome,preco,id_categoria) VALUES (NULL,'Skate',296.00,1);
INSERT INTO produto (id,nome,preco,id_categoria) VALUES (NULL,'Notebook',3500.00,2);
INSERT INTO produto (id,nome,preco,id_categoria) VALUES (NULL,'Monitor',450.00,2);
INSERT INTO produto (id,nome,preco,id_categoria) VALUES (NULL,'O Diário de Anne Frank',45.00,3);
INSERT INTO produto (id,nome,preco,id_categoria) VALUES (NULL,'O Dia do Curinga',65.00,3);
INSERT INTO produto (id,nome,preco,id_categoria) VALUES (NULL,'O Dia do Curinga',65.00,3);
INSERT INTO produto (id,nome,preco,id_categoria) VALUES (NULL,'O mundo de sofia',48.00,3);
INSERT INTO produto (id,nome,preco,id_categoria) VALUES (NULL,'Através do Espelho',38.00,3);

CREATE TABLE categoria_produto (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(40),
    PRIMARY KEY(id)
);

INSERT INTO categoria_produto (id,nome) VALUES (NULL,'Infantil');
INSERT INTO categoria_produto (id,nome) VALUES (NULL,'Informática');
INSERT INTO categoria_produto (id,nome) VALUES (NULL,'Educacional');

CREATE TABLE venda_produto (
    id INT NOT NULL AUTO_INCREMENT,
    id_produto INT(3),
    valor FLOAT(10,2),
    data DATE,
    PRIMARY KEY(id)
);

INSERT INTO venda_produto (id,id_produto,valor,data) VALUES (NULL,1,35.00,'2018-05-15');
INSERT INTO venda_produto (id,id_produto,valor,data) VALUES (NULL,1,35.00,'2018-06-15');
INSERT INTO venda_produto (id,id_produto,valor,data) VALUES (NULL,1,35.00,'2018-07-15');
INSERT INTO venda_produto (id,id_produto,valor,data) VALUES (NULL,2,120.00,'2018-07-15');
INSERT INTO venda_produto (id,id_produto,valor,data) VALUES (NULL,2,120.00,'2018-07-14');
INSERT INTO venda_produto (id,id_produto,valor,data) VALUES (NULL,3,15.00,'2018-07-15');
INSERT INTO venda_produto (id,id_produto,valor,data) VALUES (NULL,7,45.00,'2018-07-15');
INSERT INTO venda_produto (id,id_produto,valor,data) VALUES (NULL,8,65.00,'2018-07-15');
INSERT INTO venda_produto (id,id_produto,valor,data) VALUES (NULL,8,65.00,'2018-07-16');
INSERT INTO venda_produto (id,id_produto,valor,data) VALUES (NULL,9,48.00,'2018-07-16');
INSERT INTO venda_produto (id,id_produto,valor,data) VALUES (NULL,5,3500.00,'2018-07-16');
INSERT INTO venda_produto (id,id_produto,valor,data) VALUES (NULL,5,3500.00,'2018-07-16');
INSERT INTO venda_produto (id,id_produto,valor,data) VALUES (NULL,6,450.00,'2018-07-16');

--Para este exemplo, suponha que seja necessário trazer as informações de todos os produtos da tabela produto, e também trazer o nome da sua respectiva categoria no resultado. Para isso, podemos utilizar o trecho de código abaixo:
SELECT 
P.nome,
P.preco,
C.nome AS Categoria
FROM
produto P
INNER JOIN
categoria_produto C
ON P.id_categoria = C.id;
--No trecho de código acima, nas linhas 1 a 4 selecionamos a coluna nome e a coluna preco da tabela produto, e em seguida, selecionamos a coluna categoria da tabela categoria.







