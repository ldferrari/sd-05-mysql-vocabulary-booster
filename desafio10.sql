SELECT P.productName AS 'Produto',
MIN(OD.quantity) AS 'Mínima',
MAX(OD.quantity) AS 'Máxima',
ROUND(AVG(OD.quantity), 2) AS 'Média'
FROM w3schools.products AS P
INNER JOIN w3schools.order_details AS OD
ON P.productId = OD.productID
GROUP BY P.productName
HAVING AVG(OD.quantity) > 20.00
ORDER BY AVG(OD.quantity), P.productName;
