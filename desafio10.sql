SELECT p.ProductName AS 'Produto',
MIN(od.Quantity) AS 'Mínina',
MAX(od.Quantity) AS 'Máxima',
ROUND(AVG(od.Quantity), 2) AS 'Média'
FROM w3schools.order_details AS od
INNER JOIN w3schools.products AS p
ON od.ProductID = p.ProductID
GROUP BY p.ProductID
HAVING ROUND(AVG(od.Quantity), 2) > 20
ORDER BY 4, 1;
