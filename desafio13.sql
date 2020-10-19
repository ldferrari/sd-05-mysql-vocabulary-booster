SELECT prod.ProductName as 'Produto',
prod.Price as 'Preço'
FROM w3schools.products AS prod
JOIN
w3schools.order_details AS ord
ON(ord.ProductID = prod.ProductID)
WHERE ord.Quantity > 80
ORDER BY
prod.ProductName;
