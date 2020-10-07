SELECT
customers.contactName AS `Nome de contato`,
shippers.shipperName AS `Empresa que fez o envio`,
orders.orderDate AS `Data do pedido`
FROM w3schools.orders
JOIN w3schools.customers ON customers.customerID = orders.customerID
JOIN w3schools.shippers ON shippers.shipperID = orders.shipperID
WHERE shipperName IN ('Speedy Express', 'United Package')
ORDER BY contactName, shipperName, orderDate;
