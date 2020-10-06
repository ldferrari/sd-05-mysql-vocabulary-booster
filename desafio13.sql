-- Desafio 13
-- Exibe todos produtos que já tiveram um pedido associado requerindo uma quantidade desse produto maior que 80. Usando o banco w3schools como referência, monte uma query que exiba duas colunas:
-- 
-- A primeira coluna deve possuir o alias "Produto" e exibir o nome do produto.
-- 
-- A segunda coluna deve possuir o alias "Preço" e exibir o preço desse produto.
-- 
-- Os resultados devem estar ordenados pelo nome do produto em ordem alfabética.
select * from w3schools.products;

select * from w3schools.order_details;

SELECT
ProductName AS 'Produto',
Price as 'Preço'
FROM w3schools.order_details AS d,
w3schools.products as p
WHERE d.ProductID = p.ProductID
AND d.Quantity > 80
ORDER BY ProductName;