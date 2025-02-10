-- Alterando o nome da coluna "Preco" em ProdutoOfertado e depois desfazendo
SELECT * FROM ProdutoOfertado;

ALTER TABLE ProdutoOfertado
RENAME COLUMN Preco TO Price;

SELECT * FROM ProdutoOfertado;

ALTER TABLE ProdutoOfertado
RENAME COLUMN Price TO Preco;


-- Cria um índice para a coluna "Nome" da tabela "Fornecedor"
CREATE INDEX idx_nome_fornecedor
ON Fornecedor (Nome);

-- Verificando a existência do índice
SELECT index_name
FROM all_ind_columns
WHERE table_name = 'FORNECEDOR';

DROP INDEX idx_nome_fornecedor;

-- Inserindo um novo entregador
INSERT INTO Entregador (CPF, DataDeNascimento, Nome) VALUES ('91221101312', TO_DATE('1989-12-13', 'YYYY-MM-DD'), 'Taylor Silva');

SELECT * FROM Entregador;

-- Alterando o nome do novo entregador
UPDATE Entregador SET Nome = 'Taylor Silve' WHERE CPF = '91221101312';

SELECT * FROM Entregador;

-- Removendo o novo entregador
DELETE FROM Entregador WHERE CPF = '91221101312';

SELECT * FROM Entregador;