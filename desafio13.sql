SELECT 
ProductName as 'Produto',
Price as 'Preço'
FROM products 
INNER JOIN order_details ON products.ProductID = order_details.ProductID
WHERE Quantity > 80
ORDER BY `Produto`;
