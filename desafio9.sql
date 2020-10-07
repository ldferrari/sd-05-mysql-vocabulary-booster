SELECT CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
COUNT(o.EmployeeID) AS 'Total de pedidos'
FROM w3schools.employees as e
INNER JOIN w3schools.orders AS o
ON e.EmployeeID = o.EmployeeID
WHERE o.OrderID IS NOT NULL
GROUP BY 1
ORDER BY 2;
