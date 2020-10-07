SELECT
CONCAT(employees.firstName, ' ', employees.lastName) AS `Nome completo`,
COUNT(orders.orderID) AS `Total de pedidos`
FROM w3schools.employees
JOIN w3schools.orders ON orders.employeeID = employees.employeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
