SELECT prod.ProductName as 'Produto',
min(ord.Quantity) as 'Mínima',
max(ord.Quantity) as 'Máxima',
round(avg(ord.Quantity), 2) as 'Média'
FROM w3schools.products as prod
JOIN
w3schools.order_details as ord
ON(prod.ProductID = ord.ProductID)
GROUP BY 
prod.ProductName
HAVING
round(avg(ord.Quantity), 2) > 20.00
ORDER BY
AVG(ord.Quantity),
prod.ProductName;
