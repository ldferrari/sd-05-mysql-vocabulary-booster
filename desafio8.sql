SELECT 
ContactName as 'Nome de contato',
ShipperName as 'Empresa que fez o envio',
OrderDate as 'Data do pedido' 
FROM orders
INNER JOIN customers ON orders.CustomerID = customers.CustomerID
INNER JOIN shippers ON shippers.ShipperID = orders.ShipperID
WHERE shippers.ShipperName IN('Speedy Express', 'United Package')
ORDER BY `Nome de contato`,`Empresa que fez o envio`, `Data do pedido`;
