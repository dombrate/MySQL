CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas (
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255),
pedacos INT,
sabor VARCHAR(255),
borda VARCHAR(255),
PRIMARY KEY (id),
categoria_id BIGINT,
FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
preco DOUBLE,
tamanho VARCHAR(255),
PRIMARY KEY (id)
);

SELECT * FROM tb_pizzas;
SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (preco, tamanho) VALUES (30.00, 'Média');
INSERT INTO tb_categorias (preco, tamanho) VALUES (40.00, 'Média');
INSERT INTO tb_categorias (preco, tamanho) VALUES (55.00, 'Média');
INSERT INTO tb_categorias (preco, tamanho) VALUES (90.00, 'Grande');
INSERT INTO tb_categorias (preco, tamanho) VALUES (95.00, 'Grande');

INSERT INTO tb_pizzas (tipo, pedacos, sabor, borda, categoria_id) VALUES ('Salgada', 8, 'Calabresa', 'Manjericao', 1);
INSERT INTO tb_pizzas (tipo, pedacos, sabor, borda, categoria_id) VALUES ('Salgada', 8, 'Calabresa', 'Cheddar', 2);
INSERT INTO tb_pizzas (tipo, pedacos, sabor, borda, categoria_id) VALUES ('Salgada', 16, 'Portuguesa', 'Brocolis', 5);
INSERT INTO tb_pizzas (tipo, pedacos, sabor, borda, categoria_id) VALUES ('Salgada', 8, 'Lombo', 'Cheddar', 3);
INSERT INTO tb_pizzas (tipo, pedacos, sabor, borda, categoria_id) VALUES ('Doce', 8, 'Nutella', 'Sem borda', 3);
INSERT INTO tb_pizzas (tipo, pedacos, sabor, borda, categoria_id) VALUES ('Doce', 16, 'cookies', 'Sem borda', 4);
INSERT INTO tb_pizzas (tipo, pedacos, sabor, borda, categoria_id) VALUES ('Salgada', 8, 'quatro queijos', 'Sem borda', 1);
INSERT INTO tb_pizzas (tipo, pedacos, sabor, borda, categoria_id) VALUES ('Salgada', 16, 'Portuguesa', 'Sem borda', 2);

SELECT * FROM tb_categorias WHERE preco > 45.00;
SELECT * FROM tb_categorias WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id;
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id WHERE tipo = 'Doce';