SELECT pro.ProductName AS 'Produto',
  MIN(odt.Quantity) AS 'Mínima',
  MAX(odt.Quantity) AS 'Máxima',
  ROUND(AVG(odt.Quantity), 2) AS 'Média'
FROM w3schools.products AS pro
INNER JOIN w3schools.order_details AS odt ON(pro.ProductID = odt.ProductID)
GROUP BY pro.ProductID
HAVING ROUND(AVG(odt.Quantity), 2) > 20.00
ORDER BY 4, 1;
