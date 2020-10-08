SELECT
P.ProductName Produto,
P.Price `Preço`
FROM w3schools.order_details AS OD
JOIN w3schools.products AS P
ON P.ProductID = OD.ProductID
WHERE OD.Quantity > 80
ORDER BY Produto;
