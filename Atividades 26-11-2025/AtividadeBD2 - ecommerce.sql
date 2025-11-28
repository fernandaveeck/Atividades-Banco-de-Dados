CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE produtos(
id_produto BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR(255) NOT NULL,
preco_produto DECIMAL(7,2) NOT NULL,
categoria_produto VARCHAR(255),
loja_produto VARCHAR(255) NOT NULL
);

INSERT INTO produtos (nome_produto, preco_produto, categoria_produto, loja_produto) VALUES
("Gloss Tint Cereja", 54.00, "Beleza", "LoveMe Store"),
("PlayStation 5", 3200.00, "Eletrônicos", "GameStation"),
("Blush Coral", 40.00, "Beleza", "LoveMe Store"),
("XBOX Serie S", 3000.00, "Eletrônicos", "GameStation"),
("XBOX Serie X", 3000.00, "Eletrônicos", "GameStation"),
("Mini Bolsa Preta", 120.00, "Moda", "Delicate"),
("Vestido Plissado Rosa", 150.00, "Moda", "Delicate"),
("Caminha Acolchoada 90cm X 90cm", 130.00, "PetShop", "PetPlace");

SELECT id_produto, nome_produto, preco_produto, categoria_produto, loja_produto FROM produtos WHERE preco_produto > 500;

SELECT id_produto, nome_produto, preco_produto, categoria_produto, loja_produto FROM produtos WHERE preco_produto < 500;


