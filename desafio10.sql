SELECT p.ProductName AS 'Produto', 
(SELECT MIN(od.Quantity) FROM w3schools.order_details AS od WHERE p.ProductID = od.ProductID) AS 'Mínima',
(SELECT MAX(od.Quantity) FROM w3schools.order_details AS od WHERE p.ProductID = od.ProductID) AS 'Máxima',
(SELECT ROUND(AVG(od.Quantity), 2) FROM w3schools.order_details AS od WHERE p.ProductID = od.ProductID) AS 'Média'
FROM w3schools.products AS p
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
