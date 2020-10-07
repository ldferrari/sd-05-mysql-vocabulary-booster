SELECT c.ContactName AS 'Nome de contato', s.ShipperName AS 'Empresa que fez o envio',
o.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS o
INNER JOIN w3schools.customers AS c ON o.CustomerID = c.CustomerID
INNER JOIN w3schools.shippers AS s ON s.ShipperID = o.ShipperID
ORDER BY `Nome de contato`, s.ShipperName, o.OrderDate;
