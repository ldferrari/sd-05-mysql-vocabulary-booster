SELECT CONCAT(FirstName, ' ', LastName) AS 'Nome completo',
-- count how many times each employeeid appears on orders table
COUNT(*) AS 'Total de pedidos'
FROM w3schools.employees AS emp
INNER JOIN w3schools.orders AS ord ON emp.EmployeeID = ord.EmployeeID
GROUP BY ord.EmployeeID
ORDER BY `Total de pedidos`;
