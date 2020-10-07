SELECT ProductName AS 'Produto',
MIN(od.Quantity) AS 'Mínima',
MAX(od.Quantity) AS 'Máxima',
ROUND(AVG(od.Quantity),2) AS 'Média'

FROM w3schools.products AS prod
INNER JOIN w3schools.order_details AS od
ON prod.ProductID = od.ProductID -- Link tables thanks to common ProductID

GROUP BY prod.ProductID
HAVING `Média` > 20 -- Filter using Having instead of When after Group By
ORDER BY `Média`, ProductName;
