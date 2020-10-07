SELECT prod.ProductName As Produto,
MIN(od.Quantity) AS Mínima,
MAX(od.Quantity) AS Máxima,
ROUND(AVG(od.Quantity), 2) AS Média
FROM w3schools.products AS prod
INNER JOIN w3schools.order_details AS od
ON prod.ProductID = od.ProductID
GROUP BY prod.ProductID
HAVING AVG(od.Quantity) > 20.00
ORDER BY 4, 1;
