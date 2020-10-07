SELECT cust.ContactName AS 'Nome de contato',
ship.ShipperName AS 'Empresa que fez o envio',
OrderDate AS 'Data do pedido'
FROM w3schools.orders AS ord
INNER JOIN w3schools.customers AS cust ON ord.CustomerID = cust.CustomerID
INNER JOIN w3schools.shippers AS ship ON ord.ShipperID = ship.ShipperID
WHERE ship.ShipperName IN('Speedy Express', 'United Package')
ORDER BY ContactName, ShipperName, OrderDate;
