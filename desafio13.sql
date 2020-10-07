SELECT ProductName as Produto,
Price as Preço
FROM order_details
INNER JOIN products
ON products.ProductID = order_details.ProductID AND Quantity > 80
ORDER BY ProductName;
