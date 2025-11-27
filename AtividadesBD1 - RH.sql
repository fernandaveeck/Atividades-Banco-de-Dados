CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE colaboradores(
id_colab BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_colab VARCHAR(255) NOT NULL,
datanascimento_colab DATE,
salario_colab DECIMAL(7,2),
departamento_colab VARCHAR(100) NOT NULL
);

INSERT INTO colaboradores (nome_colab, datanascimento_colab, salario_colab, departamento_colab) VALUES 
("Geandro A.", '1999-09-18',10000.00,"Instrução"),
("Murilo S.", '2000-03-24',10000.00,"Instrução"),
("Pâmela D.", '2004-07-03', 8000.00,"T.I."),
("Julia S.", '2006-07-27', 5000.00, "Marketing"), -- Salário atualizado para 1990.00
("Mauricio P.", '1984-10-30', 1990.00, "Recepção"); -- Salário atualizado para 1600.00

SELECT * FROM colaboradores;

SELECT id_colab, nome_colab, salario_colab, departamento_colab FROM colaboradores WHERE salario_colab > 2000.00;

SELECT id_colab, nome_colab, salario_colab, departamento_colab FROM colaboradores WHERE salario_colab < 2000.00;

UPDATE colaboradores SET salario_colab = CASE id_colab
WHEN 4 THEN 1990.00
WHEN 5 THEN 1600.00
END WHERE id_colab IN (4,5);