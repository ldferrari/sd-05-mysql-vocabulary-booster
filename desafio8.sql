SELECT c.contactName as 'Nome de contato',
s.shipperName AS 'Empresa que fez o envio',
o.orderDate AS 'Data do pedido'
FROM w3schools.customers AS c
INNER JOIN w3schools.orders AS o ON o.customerID = c.customerID
INNER JOIN w3schools.shippers AS s ON s.shipperID = o.shipperID
WHERE s.ShipperName = 'Speedy Express' OR s.ShipperName = 'United Package'
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
