SELECT p.ProductName AS 'Produto',
MIN(o.Quantify) AS 'Mínima',
MAS(o.Quantify) AS 'Máxima',
Round(AVG(o.Quantify), 2) AS 'Média'
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS o
ON o.ProductID = p.ProductID
GROUP BY p.ProductID
HAVING ROUND(AVG(o.Quantify), 2) > 20.00
ORDER BY 4, 1;
