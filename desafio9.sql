-- "Nome completo" employee
-- "Total de pedidos" quantidade de orders pelo funcionario

SELECT CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
COUNT(o.EmployeeID) AS 'Total de pedidos'
FROM w3schools.employees AS e
INNER JOIN w3schools.orders AS o ON o.EmployeeID = e.EmployeeID
GROUP BY (o.EmployeeID)
ORDER BY `Total de Pedidos`;
