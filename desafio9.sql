select * from w3schools.order_details;

-- ORDER DETAILS // Quantity
-- ORDERS // EmployeeID

SELECT 
CONCAT(EMP.FirstName, ' ', EMP.LastName) AS 'Nome completo',
COUNT(ORDT.Quantity) AS 'Total de pedidos'
FROM w3schools.employees AS EMP
INNER JOIN w3schools.orders AS ORD
ON EMP.EmployeeID = ORD.EmployeeID
INNER JOIN w3schools.order_details AS ORDT
ON (ORDT.OrderID = ORD.OrderID)
GROUP BY CONCAT(EMP.FirstName, ' ', EMP.LastName)
ORDER BY COUNT(ORDT.Quantity) 

