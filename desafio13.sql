-- 'Produto' - nome do produto tabela products associado com o product id da tabela orders_details
-- 'Preço' - preço do produto na tabela products, associado com o product_id da tabela orders_details
-- verificar quantidade total de produto vendido maior que 80.

SELECT p.ProductName AS 'Produto',
p.Price AS 'Preço'
FROM w3schools.products AS p, w3schools.order_details AS ord
WHERE p.ProductId = ord.ProductId AND ord.Quantity > 80
ORDER BY `Produto`;
