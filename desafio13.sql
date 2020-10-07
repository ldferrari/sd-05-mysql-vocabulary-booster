SELECT ProductName AS 'Produto',
Price AS 'Preço'
FROM w3schools.products AS prod
INNER JOIN w3schools.order_details AS od
ON prod.ProductID = od.ProductID
WHERE od.Quantity > 80
ORDER BY `Produto`;

-- Here it is also possible not to use JOIN, because we display elements from same table
-- while only using an element from another table to condition:

-- SELECT ProductName AS 'Produto', Price as 'Preço'
-- FROM w3schools.products as prod, w3schools.order_details AS od
-- WHERE od.ProductID = prod.ProductID AND od.Quantity > 80
-- ORDER BY `Produto`;
