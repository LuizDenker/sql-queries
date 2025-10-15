-- CONSULTAS COM JOINS EM SQL
-- Arquivo criado em 15/10/2025

-- INNER JOIN
SELECT p.id_pedido, p.data_pedido, c.nome, c.email
FROM pedidos p
INNER JOIN clientes c ON p.id_cliente = c.id_cliente;

-- LEFT JOIN
SELECT p.id_pedido, p.data_pedido, c.nome
FROM pedidos p
LEFT JOIN clientes c ON p.id_cliente = c.id_cliente;

-- RIGHT JOIN
SELECT c.nome, c.email, p.id_pedido
FROM pedidos p
RIGHT JOIN clientes c ON p.id_cliente = c.id_cliente;

-- WHERE e JOIN
SELECT c.nome, p.id_pedido, p.data_pedido
FROM clientes c
INNER JOIN pedidos p ON c.id_cliente = p.id_cliente
WHERE c.cidade = 'São Paulo';
