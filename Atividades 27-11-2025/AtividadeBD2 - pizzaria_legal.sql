CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255));

CREATE TABLE tb_pizzas(
id_pizza BIGINT AUTO_INCREMENT PRIMARY KEY,
sabor VARCHAR(255),
ingredientes VARCHAR (255),
preco DECIMAL(6,2),	
tamanho VARCHAR (255),
id_categoria BIGINT,
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria));

INSERT INTO tb_categorias (nome, descricao) VALUES
("Salgada", "Pizzas Salgadas Clássicas"),
("Doce", "Pizzas Doces Clássicas"),
("Vegana Salgada", "Pizzas Salgadas sem Ingredientes de Origem Animal"),
("Vegana Doce","Pizzas Doces sem Ingredientes de Origem Animal"),
("Gluten Free Salgada", "Pizzas Salgadas sem Glúten"),
("Gluten Free Doce", "Pizzas Doces sem Glúten");

INSERT INTO tb_pizzas (sabor, ingredientes, preco, tamanho, id_categoria) VALUES
("Calabresa", "Massa, Molho de tomate, Queijo, Calabresa", 89.90, "P, M ou G", 1),
("Frango com Catupiry", "Massa, Molho de tomate, Queijo Mussarela, Queijo Catupiry, Frango Desfiado", 89.90, "P, M ou G", 1),
("Chocolate", "Massa, Chocolate ao Leite", 59.90, "P, M ou G", 2),
("Banana com Canela", "Massa, Banana Frita Polvilhada com Canela", 62.90, "P, M ou G", 2),
("Brócolis", "Massa, Molho de Tomate, Queijo Mussarela Veg, Brócolis Refogado", 79.90, "P, M ou G", 3),
("Calabresa", "Massa Veg, Molho de Tomate, Queijo Mussarela Veg, Calabresa Veg", 79.90, "P, M ou G", 3),
("Chocolate", "Massa Veg, Chocolate Veg", 59.90, "P, M ou G", 4),
("Prestígio", "Massa Veg, Chocolate Veg, Coco Ralado", 62.90, "P, M ou G", 4),
("Mussarela", "Massa Sem Glúten, Molho de Tomate Sem Glúten, Queijo Mussarela Sem Glúten", 79.90, "P, M ou G", 5 ),
("Quatro Queijos", "Massa sem Glúten, Mussarela Sem Glúten, Parmesão Sem Glúten, Gorgonzola Sem Glúten, Provolone Sem Glúten", 79.90, "P, M ou G", 5),
("Chocolate Sem Glúten", "Massa Sem Glúten, Chocolate Meio Amargo Sem Glúten", 59.90, "P, M ou G", 6),
("Morango com Chocolate Sem Glúten", "Massa Sem Glúten, Chocolate Sem Glúten, Morangos Frescos", 62.90, "P, M ou G", 6);


SELECT id_pizza, sabor, preco, ingredientes FROM tb_pizzas WHERE preco > 45.00;

SELECT id_pizza, sabor, preco, ingredientes FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT id_pizza, sabor FROM tb_pizzas WHERE sabor LIKE "%m%";

SELECT id_pizza, tb_categorias.nome, sabor, preco, tb_categorias.descricao FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

SELECT id_pizza, tb_categorias.nome, sabor, preco, tb_categorias.descricao FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria WHERE nome LIKE "%doce%";








