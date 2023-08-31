CREATE DATABASE school;
USE school;

CREATE TABLE funcionarios (
nome VARCHAR(100) NOT NULL,
cpf VARCHAR (14) PRIMARY KEY NOT NULL,
tipo VARCHAR (30) NOT NULL

);
CREATE TABLE alunos (
nome VARCHAR(100) NOT NULL,
turma VARCHAR (10) NOT NULL,
matricula INT NOT NULL,
PRIMARY KEY (matricula)
);
CREATE TABLE transacoes	 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    data_transacao DATE NOT NULL,
    tipo ENUM('Entrada', 'Saída') NOT NULL,
    valor DECIMAL(10, 2) NOT NULL
);

ALTER TABLE funcionarios ADD COLUMN departamento VARCHAR (50) NOT NULL; 
ALTER TABLE alunos ADD COLUMN idade INT NOT NULL;
ALTER TABLE transacoes ADD COLUMN descricao VARCHAR(255) NOT NULL;

INSERT INTO funcionarios (nome, cpf, tipo, departamento)
VALUES ('João', '085.684.433-27', 'professor', '3'),
('Matheus', '035.124.498-97', 'professor', '3'),
('Helio', '097.234.474-17', 'cordenador', '1');


INSERT INTO alunos (nome, turma, matricula, idade)
VALUES ('Lucas', '7 ano', '151235', '12'),
('Marrone', '6 ano', '151115', '11'),
('Elisa', '8 ano', '151515', '13');


INSERT INTO transacoes (id, data_transacao, tipo, valor, descricao)
VALUES ('156', '2021-10-10', 'entrada', '35.00', 'pagamento de um livro'),
('18536', '1996-06-10', 'saida', '65.00', 'pagamento energia'),
('33365', '2004-10-12', 'saida', '200.00', 'pagamento internet');


ALTER TABLE funcionarios DROP COLUMN nome;
ALTER TABLE alunos DROP COLUMN idade;
ALTER TABLE transacoes DROP COLUMN descricao;


SELECT * FROM funcionarios; 
SELECT * FROM alunos;
SELECT * FROM transacoes;

SELECT cpf
FROM funcionarios
WHERE tipo = 'professor';

SELECT nome, matricula
FROM alunos
WHERE idade < 13;

SELECT id, tipo
FROM transacoes
WHERE valor < 100.00;




