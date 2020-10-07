SELECT P.ProductName Produto,
MIN(O.Quantity) `Mínima`,
MAX(O.Quantity) `Máxima`,
ROUND(AVG(O.Quantity), 2) `Média`
FROM w3schools.order_details AS O
INNER JOIN w3schools.products AS P
ON O.ProductID = P.ProductID
GROUP BY P.ProductID
HAVING ROUND(AVG(O.Quantity), 2) > 20
ORDER BY `Média`, Produto;
