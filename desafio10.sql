SELECT (
SELECT P.ProductName
FROM w3schools.products AS P
WHERE P.ProductID = OD.ProductID
) AS 'Produto',
MIN(OD.Quantity) AS 'Mínima',
MAX(OD.Quantity) AS 'Máxima',
ROUND(AVG(OD.Quantity),2) AS 'Média'
FROM w3schools.order_details AS OD
GROUP BY OD.ProductID
ORDER BY 4,1;
