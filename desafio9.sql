-- Exibe todos as pessoas funcionárias que já realizaram algum pedido, mostrando também seu total de pedidos feitos.
-- Usando o banco w3schools como referência, monte uma query que exiba duas colunas:
-- A primeira coluna deve possuir o alias "Nome completo" e exibir o nome completo da pessoa funcionária (não se esqueça do espaço entre o nome e o sobrenome).
-- A segundo coluna deve possuir o alias "Total de pedidos" e exibir a quantidade total de pedidos feitos pela pessoa.
-- Ordene seus resultados pelo total de pedidos em ordem crescente.

SELECT CONCAT(e.FirstName,' ',e.LastName) AS 'Nome completo', -- Nome completo dos funcionários: tabela employees
COUNT(od.EmployeeID) AS 'Total de pedidos' -- Contabiliza o total de pedidos de cada funcionário
FROM w3schools.employees AS e
INNER JOIN w3schools.orders AS od ON e.EmployeeID = od.EmployeeID -- Relação employees com orders
GROUP BY od.EmployeeID
ORDER BY `Total de pedidos`; -- Ordenação pelo número total de pedidos
