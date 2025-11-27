CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE alunos (
id_aluno BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_aluno VARCHAR(255) NOT NULL,
datanascimento_aluno DATE NOT NULL,
nota_aluno DECIMAL (5,2),
turma_aluno INT NOT NULL
);

INSERT INTO alunos (nome_aluno, datanascimento_aluno, nota_aluno, turma_aluno) VALUES
("Maria Luisa", '2009-11-12', 5.3, 101),
("João Silva", '2008-02-02', 7.0, 202),
("Ana Clara", '2009-01-23', 9.8, 101),
("Luis Carlos", '2008-05-19', 9.7, 202),
("Rafael Teixeira", '2008-08-29', 6.0, 202),
("Julia Pereira", '2007-12-07', 6.8, 303),
("Samuel Pascal", '2009-03-25', 8.0, 202),
("Cassandra Nunes", '2007-09-10', 9.1, 303);

SELECT id_aluno, nome_aluno, nota_aluno, turma_aluno FROM alunos WHERE nota_aluno > 7.0;
SELECT id_aluno, nome_aluno, nota_aluno, turma_aluno FROM alunos WHERE nota_aluno < 7.0;

ALTER TABLE alunos MODIFY nota_aluno DECIMAL(4,1) NOT NULL;



