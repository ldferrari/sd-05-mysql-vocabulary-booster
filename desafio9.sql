SELECT DISTINCT(CONCAT(E.firstname,' ', E.lastname)) AS 'Nome completo',
COUNT(O.employeeId) AS 'Total de pedidos'
FROM w3schools.employees AS E
INNER JOIN w3schools.orders AS O
ON E.employeeId = O.employeeId
GROUP BY O.employeeId
ORDER BY COUNT(O.employeeId);
