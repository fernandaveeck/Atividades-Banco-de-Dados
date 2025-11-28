CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR (255),
descricao VARCHAR (255)
);

CREATE TABLE tb_produtos(
id_produto BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
preco DECIMAL (7,2) NOT NULL,
quantidade_estoque INT,
validade DATE,
id_categoria BIGINT,
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria));

 INSERT INTO tb_categorias(categoria, descricao) VALUES
("Analgésico", "Alívio da dor e febre"), 
("Antibiótico", "Tratamento de infecções bacterianas"),
("Antialérgico", "Alivío de sintomas alérgicos"),
("Dermocosmético", "Cuidado com a pele"),
("Beleza", "Maquiagem e estética");

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos(nome, preco, quantidade_estoque, validade, id_categoria) VALUES
("Paracetamol", 12.99, 50, '2027-11-27', 1),
("Dipirona", 10.50, 60, '2027-11-27', 1),
("Amoxicilina", 57.00, 40, '2027-11-27', 2),
("Clavulin", 168.90, 70, '2027-11-27', 2),
("Loratadina", 8.74, 120, '2027-11-27', 3), 
("Cetirizina", 24.90, 75, '2027-11-27', 3),
("Esfoliante Facial", 50.00, 45, '2027-11-27', 4),
("Hidratante Facial", 64.90,50,  '2027-11-27', 4),
("Lip Tint Cereja", 45.99, 30, '2027-11-27', 5),
("Base Líquida Alta Cobertura", 89.90, 40, '2027-11-27', 5);

SELECT * FROM tb_produtos;

SELECT id_produto, nome, preco FROM tb_produtos WHERE preco > 50.00;

SELECT id_produto, nome, preco FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT id_produto, nome, preco FROM tb_produtos WHERE nome LIKE "%c%";

SELECT id_produto, nome, preco, tb_categorias.categoria, tb_categorias.descricao FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT id_produto, nome, preco, tb_categorias.categoria, tb_categorias.descricao FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria WHERE tb_categorias.id_categoria = 4;


