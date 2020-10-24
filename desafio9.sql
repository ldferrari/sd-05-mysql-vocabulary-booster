-- subquery melhor performance
SELECT CONCAT(E.FirstName, ' ', E.LastName) AS 'Nome Completo',
(
	SELECT COUNT(O.EmployeeID) 
    FROM w3schools.orders AS O
    WHERE O.EmployeeID = E.EmployeeID
) AS 'Total de Pedidos'
FROM w3schools.employees AS E
GROUP BY E.EmployeeID
ORDER BY 2;
