SELECT
CONCAT(e.firstname, ' ', e.lastname) AS 'Nome completo',
COUNT(orders.employeeid) AS 'Total de pedidos'
FROM w3schools.employees AS e
INNER JOIN w3schools.orders
ON orders.employeeid = e.employeeId
GROUP BY orders.employeeid
ORDER BY COUNT(orders.employeeid);
-- INNER JOIN # JOIN
-- A única diferença é a forma de escrita, pois o resultado será o mesmo.
-- Porém é recomendado que se user Inner Join,
-- pois deixa o código mais claro sobre o que realmente está sendo feito
-- (melhora a leitura), especialmente quando é realizado outros Joins na mesma consulta,
-- como o Left Join, Right Join, entre outros.
