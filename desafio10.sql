-- Min e Max são funções que localizam o menor e o maior valor de uma coluna se$
-- (https://www.devmedia.com.br/forum/como-achar-o-maior-e-o-menor-valor-em-sql$

SELECT ProductName as Produto,
Min(Quantity) as 'Mínima', 
Max(Quantity) as 'Máxima',
ROUND(AVG(Quantity), 2) as 'Média'
FROM products
INNER JOIN order_details
ON order_details.ProductID = products.ProductID
GROUP BY ProductName
HAVING `Média` > 20
ORDER BY AVG(Quantity), ProductName;
