SELECT * FROM w3schools.orders;

SELECT cust.ContactName AS 'Nome de contato',
ship.ShipperName AS 'Empresa que fez o envio',
OrderDate AS 'Data do pedido'

FROM w3schools.orders AS ord
-- Here, orders is the common ground with all, next Inner Join to write the bridges
INNER JOIN w3schools.customers AS cust ON ord.CustomerID = cust.CustomerID
INNER JOIN w3schools.shippers AS ship ON ord.ShipperID = ship.ShipperID

WHERE ship.ShipperName IN('Speedy Express', 'United Package')
ORDER BY ContactName, ShipperName, OrderDate;
-- Would also work `Nome de Contato`, `Empresa que fez o envio`, `Data do pedido` ou 1,2,3
