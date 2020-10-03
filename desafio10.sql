SELECT pr.ProductName AS 'Produto',
MIN(od.Quantity) AS 'Mínima',
MAX(od.Quantity) AS 'Máxima',
ROUND(AVG(od.Quantity), 2) AS 'Média'
FROM w3schools.order_details AS od
INNER JOIN w3schools.products AS pr
ON od.ProductID = pr.ProductID
GROUP BY pr.ProductID
HAVING ROUND(AVG(od.Quantity), 2) >= 20
ORDER BY 4, 1;
