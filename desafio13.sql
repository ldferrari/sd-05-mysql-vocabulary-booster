SELECT
products.productName AS 'Produto',
products.price AS 'Price'
FROM w3schools.products
JOIN w3schools.order_details ON order_details.productID = products.productID
WHERE order_details.quantity > 80
ORDER BY `Produto`;
