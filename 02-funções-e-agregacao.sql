-- FUNÇÕES E AGREGAÇÃO EM SQL
-- Arquivo criado em 15/10/2025

SELECT COUNT(*) AS total_de_clientes FROM clientes;

SELECT AVG(preco) AS preco_medio FROM produtos;

SELECT MAX(preco) AS produto_mais_caro, MIN(preco) AS produto_mais_barato FROM produtos;

SELECT SUM(estoque) AS total_em_estoque FROM produtos;

SELECT cidade, COUNT(*) AS quantidade_de_clientes
FROM clientes
GROUP BY cidade;

SELECT cidade, COUNT(*) AS quantidade_de_clientes
FROM clientes
GROUP BY cidade
HAVING COUNT(*) > 10;
