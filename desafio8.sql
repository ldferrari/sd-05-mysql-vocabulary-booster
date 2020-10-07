SELECT ContactName as 'Nome de contato',
ShipperName as 'Empresa que fez o envio',
OrderDate as 'Data do pedido'
from w3schools.orders
INNER JOIN customers
ON customers.CustomerID = orders.CustomerID
INNER JOIN shippers
ON shippers.ShipperID = orders.ShipperID
WHERE ShipperName = 'Speedy Express' or ShipperName = 'United Package'
ORDER BY ContactName, ShipperName, OrderDate;
