SELECT PRO.ProductName AS 'Produto',
PRO.Price AS 'Preço'
FROM w3schools.products AS PRO
INNER JOIN w3schools.order_details AS ORD ON (PRO.ProductID = ORD.ProductID)
WHERE ORD.Quantity > 80
ORDER BY PRO.ProductName ASC;
