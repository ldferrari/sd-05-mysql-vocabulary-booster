SELECT
concat(employee.FirstName, ' ', employee.LastName) as 'Nome completo',
count(ord.EmployeeID) as 'Total de pedidos'
FROM w3schools.employees as employee
JOIN
w3schools.orders as ord	
ON(ord.EmployeeID = emp.EmployeeID)
GROUP BY ord.EmlpoyeeID
ORDER BY count(ord.EmployeeID);
