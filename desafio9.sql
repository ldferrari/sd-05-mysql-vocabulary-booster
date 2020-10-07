SELECT CONCAT_WS(' ', emp.FirstName, emp.LastName) AS 'Nome completo',
  COUNT(ord.EmployeeId) AS 'Total de pedidos'
FROM w3schools.orders AS ord
INNER JOIN w3schools.employees AS emp ON (emp.EmployeeId = ord.EmployeeId)
GROUP BY ord.EmployeeId
ORDER BY 2;
