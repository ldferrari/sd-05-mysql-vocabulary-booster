-- Exibe todos as pessoas funcionárias que já realizaram algum pedido, mostrando também seu total de pedidos feitos.
-- Usando o banco w3schools como referência, monte uma query que exiba duas colunas:
-- A primeira coluna deve possuir o alias "Nome completo" e exibir o nome completo da pessoa funcionária
-- --- (não se esqueça do espaço entre o nome e o sobrenome).
-- A segundo coluna deve possuir o alias "Total de pedidos" e exibir a quantidade total de pedidos feitos pela pessoa.
-- Ordene seus resultados pelo total de pedidos em ordem crescente.
-- w3schools.orders w3schools.employees

SELECT CONCAT_WS(' ', emp.FirstName, emp.LastName) AS 'Nome completo',
  COUNT(ord.EmployeeId) AS 'Total de pedidos'
FROM w3schools.orders AS ord
INNER JOIN w3schools.employees AS emp ON (emp.EmployeeId = ord.EmployeeId)
GROUP BY ord.EmployeeId
ORDER BY 2;