SELECT
products.productName AS 'Produto',
MIN(order_details.quantity) AS 'Mínima',
MAX(order_details.quantity) AS 'Máxima',
ROUND(AVG(order_details.quantity), 2) AS `Média`
FROM w3schools.order_details
JOIN w3schools.products ON products.productID = order_details.productID
GROUP BY products.productName HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
