SELECT
p.productname AS 'Produto',
p.price AS 'Preço'
FROM w3schools.products AS p
WHERE EXISTS 
(SELECT * FROM w3schools.order_details
WHERE order_details.quantity > 80 AND p.productid = order_details.productid);
