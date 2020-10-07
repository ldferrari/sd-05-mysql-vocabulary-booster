SELECT
CONCAT(E.FirstName, ' ', E.LastName) `Nome completo`,
COUNT(O.EmployeeID) `Total de pedidos`
FROM w3schools.employees AS E
INNER JOIN w3schools.orders AS O
ON O.EmployeeID = E.EmployeeID
GROUP BY O.EmployeeID
ORDER BY `Total de pedidos`;
