SELECT P.ProductName AS "Produto",
P.Price AS "Preço"
FROM w3schools.products AS P
INNER JOIN w3schools.order_details AS OD
ON OD.ProductID = P.ProductID AND OD.Quantity > 80
GROUP BY P.ProductID
ORDER BY P.ProductName;
