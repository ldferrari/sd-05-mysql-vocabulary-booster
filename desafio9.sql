SELECT CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
COUNT(od.EmployeeID) AS 'Total de pedidos'
FROM w3schools.orders AS od
INNER JOIN w3schools.employees AS e
ON od.EmployeeID = e.EmployeeID
GROUP BY od.EmployeeID
ORDER BY 2;
