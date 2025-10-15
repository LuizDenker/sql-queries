-- FUNÇÕES E AGREGAÇÃO EM SQL
-- Arquivo criado em 15/10/2025

-- 1. Contar o total de registros em uma tabela
SELECT COUNT(*) AS total_de_clientes FROM clientes;

-- 2. Calcular a média de valores em uma coluna
SELECT AVG(preco) AS preco_medio FROM produtos;

-- 3. Encontrar o valor máximo e mínimo
SELECT MAX(preco) AS produto_mais_caro, MIN(preco) AS produto_mais_barato FROM produtos;

-- 4. Somar todos os valores de uma coluna
SELECT SUM(estoque) AS total_em_estoque FROM produtos;

-- 5. Agrupar resultados e contar (ex: clientes por cidade)
SELECT cidade, COUNT(*) AS quantidade_de_clientes
FROM clientes
GROUP BY cidade;

-- 6. Agrupar e filtrar com HAVING (ex: cidades com mais de 10 clientes)
SELECT cidade, COUNT(*) AS quantidade_de_clientes
FROM clientes
GROUP BY cidade
HAVING COUNT(*) > 10;
