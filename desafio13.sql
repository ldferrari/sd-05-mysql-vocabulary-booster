-- Exibe todos produtos que já tiveram um pedido associado requerindo uma quantidade desse produto maior que 80. Usando o banco w3schools como referência, monte uma query que exiba duas colunas:

-- A primeira coluna deve possuir o alias "Produto" e exibir o nome do produto.

-- A segunda coluna deve possuir o alias "Preço" e exibir o preço desse produto.

-- Os resultados devem estar ordenados pelo nome do produto em ordem alfabética.

SELECT products.ProductName AS 'Produto', products.Price AS 'Preço'
FROM w3schools.products

JOIN w3schools.order_details ON order_details.ProductID = products.ProductID
WHERE order_details.Quantity > 80

ORDER BY `Produto`;
