-- Exibe todos as pessoas funcionárias que já realizaram algum pedido, mostrando também seu total de pedidos feitos.
-- Usando o banco w3schools como referência, monte uma query que exiba duas colunas:
-- A primeira coluna deve possuir o alias "Nome completo" e exibir o nome completo da pessoa funcionária
-- --- (não se esqueça do espaço entre o nome e o sobrenome).
-- A segundo coluna deve possuir o alias "Total de pedidos" e exibir a quantidade total de pedidos feitos pela pessoa.
-- Ordene seus resultados pelo total de pedidos em ordem crescente.

-- w3schools.orders w3schools.employees

SELECT CONCAT(empl.FirstName, ' ', empl.LastName) AS 'Nome completo',
COUNT(ords.EmployeeID) AS 'Total de pedidos'
FROM w3schools.employees AS empl
INNER JOIN w3schools.orders AS ords
ON empl.EmployeeID = ords.EmployeeID
GROUP BY(ords.EmployeeID)
ORDER BY `Total de pedidos`;
