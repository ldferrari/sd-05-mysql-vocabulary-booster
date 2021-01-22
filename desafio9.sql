SELECT concat(EM.FirstName, ' ', EM.LastName) AS 'Nome completo', count(O.EmployeeID) AS 'Total de pedidos'
FROM employees AS EM
INNER JOIN orders AS O
ON EM.EmployeeID = O.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
