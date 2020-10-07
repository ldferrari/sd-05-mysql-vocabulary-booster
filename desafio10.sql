SELECT PR.ProductName AS 'Produto', MIN(OD.Quantity) AS 'Mínima', MAX(OD.Quantity) AS 'Máxima',
  ROUND(AVG(OD.Quantity),2) AS 'Média'
FROM products AS PR
INNER JOIN order_details AS OD
ON PR.ProductID = OD.ProductID
GROUP BY OD.ProductID
HAVING AVG(OD.Quantity) > 20
ORDER BY `Média`, `Produto`;
