--Cria uma Tabela Clientes
CREATE TABLE Clientes(
id SERIAL PRIMARY KEY,
nome VARCHAR(100),
email VARCHAR(100),
data_cadastro DATE
);

--Cria uma Tabela Pedidos
CREATE TABLE Pedidos (
    id SERIAL PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id)
);

-- Consultar Dados de clientes ou pedidos
SELECT * FROM Clientes;
SELECT * FROM Pedidos;

--Inserir Dados na Tabela
INSERT INTO Clientes (nome, email, data_cadastro)
VALUES 	('Taís Moreira','taismoreira406@gmail.com','2024-12-08'),
		('João Silva', 'joao@gmail.com', '2024-12-05'),
		('Anna Lyvia','annalyvia@gmail.com','2020-07-30'),
		('Vitória Maria','maria@gmail.com','2021-05-15'),
    	('Carlos Souza', 'carlos.souza@gmail.com', '2023-11-01'),
    	('Fernanda Lima', 'fernanda.lima@gmail.com', '2022-03-15'),
    	('Juliana Pereira', 'juliana.pereira@gmail.com', '2021-06-18'),
    	('Marcelo Rocha', 'marcelo.rocha@gmail.com', '2020-09-10'),
    	('Gabriela Almeida', 'gabriela.almeida@gmail.com', '2024-01-20'),
    	('Roberto Costa', 'roberto.costa@gmail.com', '2023-10-05'),
    	('Lucas Oliveira', 'lucas.oliveira@gmail.com', '2023-08-23'),
    	('Carla Rodrigues', 'carla.rodrigues@gmail.com', '2022-07-11'),
    	('Amanda Silva', 'amanda.silva@gmail.com', '2021-04-09'),
    	('Thiago Santos', 'thiago.santos@gmail.com', '2020-05-12'),
    	('Rafael Martins', 'rafael.martins@gmail.com', '2024-02-02'),
    	('Maria Clara', 'mariaclara@gmail.com', '2023-09-19'),
    	('Eduardo Ferreira', 'eduardo.ferreira@gmail.com', '2021-11-25'),
    	('Patrícia Lima', 'patricia.lima@gmail.com', '2022-12-05'),
    	('Renato Gomes', 'renato.gomes@gmail.com', '2023-07-01'),
    	('Marta Costa', 'marta.costa@gmail.com', '2022-05-15'),
    	('Tatiane Duarte', 'tatiane.duarte@gmail.com', '2021-08-14'),
    	('Felipe Rocha', 'felipe.rocha@gmail.com', '2023-06-22'),
    	('Juliano Souza', 'juliano.souza@gmail.com', '2022-11-03'),
    	('Sofia Fernandes', 'sofia.fernandes@gmail.com', '2020-10-15'),
    	('Ana Costa', 'ana.costa@gmail.com', '2021-02-18'),
    	('Gustavo Martins', 'gustavo.martins@gmail.com', '2024-03-10'),
    	('Leandro Pereira', 'leandro.pereira@gmail.com', '2023-05-20'),
    	('Claudia Souza', 'claudia.souza@gmail.com', '2022-01-05'),
    	('Vinícius Almeida', 'vinicius.almeida@gmail.com', '2021-09-12'),
    	('Bruna Oliveira', 'bruna.oliveira@gmail.com', '2020-04-30'),
    	('Júlia Rocha', 'julia.rocha@gmail.com', '2023-02-17'),
    	('José Ribeiro', 'jose.ribeiro@gmail.com', '2023-12-01'),
    	('Eliana Costa', 'eliana.costa@gmail.com', '2022-06-25'),
    	('Patrícia Silva', 'patricia.silva@gmail.com', '2021-03-07');

		
-- Atualiza Dados
UPDATE Clientes
SET email = 'silva@gmail.com'
WHERE nome = 'João Silva'

--Deleta Dados
DELETE FROM Clientes
WHERE nome = 'João Silva'

--Inserir Dados na Tabela	
INSERT INTO Pedidos (id_cliente, data_pedido)
VALUES 
    (1, '2024-12-06'),
    (3, '2024-12-08'),
    (4, '2024-12-09'),
    (5, '2024-12-10'),
    (6, '2024-12-11'),
    (7, '2024-12-12'),
    (8, '2024-12-13'),
    (9, '2024-12-14'),
    (10, '2024-12-15'),
    (11, '2024-12-16'),
    (12, '2024-12-17'),
    (13, '2024-12-18'),
    (14, '2024-12-19'),
    (15, '2024-12-20'),
    (16, '2024-12-21'),
    (17, '2024-12-22'),
    (18, '2024-12-23'),
    (19, '2024-12-24'),
    (20, '2024-12-25');
	(21, '2024-12-26'),
    (22, '2024-12-27'),
    (23, '2024-12-28'),
    (24, '2024-12-29'),
    (25, '2024-12-30'),
    (26, '2024-12-31'),
    (27, '2025-01-01'),
    (28, '2025-01-02'),
    (29, '2025-01-03'),
    (30, '2025-01-04');

-- Consulta Dados Filtrados
SELECT nome FROM Clientes
WHERE nome = 'Leandro Pereira'

-- Junção (JOIN) para combinar dados das tabelas Clientes e Pedidos:)
SELECT Clientes.nome, Pedidos.data_pedido  --é usado para selecionar as colunas que você deseja ver no resultado
FROM Clientes -- começa com a tabela Clientes e quer buscar informações relacionadas a essa tabela.
JOIN Pedidos --tipo de junção entre duas ou mais tabelas no SQL. Usando o JOIN padrão, que é o INNER JOIN.
ON Clientes.id = Pedidos.id_cliente --condição que define como as tabelas devem ser relacionadas entre si.




