-- Exibe todos as pessoas funcionárias que já realizaram algum pedido, mostrando também seu total de pedidos feitos.
-- Usando o banco w3schools como referência, monte uma query que exiba duas colunas:
--     A primeira coluna deve possuir o alias "Nome completo" e exibir o nome completo da pessoa funcionária
--     (não se esqueça do espaço entre o nome e o sobrenome).
--     A segundo coluna deve possuir o alias "Total de pedidos" e exibir a quantidade total de pedidos feitos pela pessoa.
-- Ordene seus resultados pelo total de pedidos em ordem crescente.

SELECT CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
COUNT(o.EmployeeID) AS 'Total de pedidos'
FROM w3schools.orders AS o
INNER JOIN w3schools.employees AS e
ON e.EmployeeID = o.EmployeeID
GROUP BY o.EmployeeID
ORDER BY 2;
