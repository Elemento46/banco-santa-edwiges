-- Banco de Dados Santa Edwiges

CREATE DATABASE IF NOT EXISTS santa_edwiges;
USE santa_edwiges;

DROP TABLE IF EXISTS CLIENTES;
CREATE TABLE CLIENTES (
    codigo INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    sexo CHAR(1) CHECK (sexo IN ('M', 'F')),
    uf CHAR(2) NOT NULL,
    telefone VARCHAR(15)
);

INSERT INTO CLIENTES (codigo, nome, sexo, uf, telefone) VALUES
(101, 'Maria Silva', 'F', 'RJ', '21999998888'),
(102, 'João Souza', 'M', 'SP', '11988887777'),
(103, 'Ana Clara', 'F', 'ES', '27988886666'),
(104, 'Carlos Alberto', 'M', 'MG', '31977775555'),
(105, 'Fernanda Lima', 'F', 'SP', '11955554444'),
(666, 'Pedro Gomes', 'M', 'RJ', '21944443333'),
(500, 'Juliana Paz', 'F', 'RJ', '21922221111'),
(200, 'Sofia Mendes', 'F', 'ES', '27999990000');

DROP TABLE IF EXISTS PRODUTOS;
CREATE TABLE PRODUTOS (
    codigo INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    quantidade INT NOT NULL,
    preco DECIMAL(10,2) NOT NULL
);

INSERT INTO PRODUTOS (codigo, nome, quantidade, preco) VALUES
(1, 'Mesa de Jantar', 15, 800.00),
(2, 'Mesinha de Centro', 50, 150.00),
(3, 'Cadeira Gamer', 25, 600.00),
(4, 'Sofá Retrátil', 10, 1500.00),
(5, 'Estante', 35, 400.00),
(6, 'Mesa Escritório', 5, 900.00),
(7, 'Armário Cozinha', 12, 1200.00),
(8, 'Cama Box', 40, 1300.00),
(9, 'Mesa Computador', 20, 350.00),
(10, 'Rack para TV', 45, 500.00);

-- Consultas SQL solicitadas
-- 1. Códigos e nomes dos clientes do sexo feminino
SELECT codigo, nome 
FROM CLIENTES 
WHERE sexo = 'F';

-- 2. Códigos e preços dos produtos com quantidade < 30 e preço > 250
SELECT codigo, preco 
FROM PRODUTOS 
WHERE quantidade < 30 AND preco > 250;

-- 3. Códigos e nomes dos clientes cujo código < 666
SELECT codigo, nome 
FROM CLIENTES 
WHERE codigo < 666;

-- 4. Todos os produtos cujo nome começa com 'Mes'
SELECT * 
FROM PRODUTOS 
WHERE nome LIKE 'Mes%';

-- 5. Código e nome dos clientes do sexo feminino cuja UF seja 'RJ' ou 'ES'
SELECT codigo, nome 
FROM CLIENTES 
WHERE sexo = 'F' 
  AND (uf = 'RJ' OR uf = 'ES');

-- 6. Contagem total de registros na tabela PRODUTOS
SELECT COUNT(*) AS total_tuplas 
FROM PRODUTOS;