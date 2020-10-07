SELECT 
ProductName as 'Produto',
MIN(Quantity) as 'Mínima',
MAX(Quantity) as 'Máxima',
ROUND(AVG(Quantity),2) AS 'Média'
FROM order_details
INNER JOIN products ON products.ProductID = order_details.ProductID
GROUP BY products.ProductName HAVING ROUND(AVG(Quantity),2) > 20
ORDER BY `Média`;
