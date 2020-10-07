SELECT c.ContactName AS 'Nome completo', COUNT(o.CustomerID) AS 'Total de pedidos'
FROM w3schools.orders AS o
INNER JOIN w3schools.customers AS c ON o.CustomerID = c.CustomerID
WHERE c.ContactName IN (SELECT CONCAT(FirstName, ' ', LastName) FROM  w3schools.employees)
GROUP BY o.CustomerID
ORDER BY `Total de pedidos`;
