SELECT CONCAT(FirstName, ' ', LastName) as 'Nome completo',
COUNT(orders.EmployeeID) as 'Total de pedidos' FROM w3schools.employees
INNER JOIN orders
ON employees.EmployeeID = orders.EmployeeID
GROUP BY orders.EmployeeID
ORDER BY COUNT(orders.EmployeeID);
