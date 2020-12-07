SELECT P.ProductName as `Produto`,
MIN(O.Quantity) AS `Mínima`,
MAX(O.Quantity) AS `Máxima`,
ROUND(AVG(O.Quantity), 2) AS `Média`
FROM w3schools.products AS P
JOIN w3schools.order_details AS O ON O.ProductID = P.ProductID
GROUP BY P.ProductName
HAVING `Média` > 20
ORDER BY 4, 1;
