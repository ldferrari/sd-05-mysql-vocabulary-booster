SELECT 
PRD.ProductName AS 'Produto',
MIN(ORD.Quantity) AS 'Mínima',
MAX(ORD.Quantity) AS 'Máxima',
ROUND(AVG(ORD.Quantity), 2) AS 'Média'
FROM w3schools.products AS PRD
INNER JOIN w3schools.order_details as ORD
ON PRD.ProductID = ORD.ProductID
GROUP BY PRD.ProductID
HAVING ROUND(AVG(ORD.Quantity), 2) > 20.00
ORDER BY 4, 1;
