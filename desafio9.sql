SELECT 
CONCAT(FirstName, ' ', LastName) as 'Nome completo',
COUNT(orders.EmployeeID) as 'Total de pedidos'
FROM orders
INNER JOIN employees ON orders.EmployeeID = employees.EmployeeID
GROUP BY orders.EmployeeID
ORDER BY `Total de pedidos`;
