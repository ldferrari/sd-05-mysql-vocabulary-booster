SELECT CONCAT(FirstName, ' ' , LastName) AS `Nome completo`,
COUNT(O.EmployeeID) AS `Total de pedidos`
FROM w3schools.orders AS O
JOIN w3schools.employees AS E ON E.EmployeeID = O.EmployeeID
GROUP BY O.EmployeeID
ORDER BY 2;
