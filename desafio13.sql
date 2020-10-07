SELECT pr.ProductName AS Produto,
pr.Price AS Preço
FROM w3schools.products AS pr
INNER JOIN w3schools.order_details AS ord
ON pr.ProductID = ord.ProductID
WHERE ord.Quantity > 80
ORDER BY 1;
