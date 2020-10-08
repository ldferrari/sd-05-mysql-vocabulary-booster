SELECT c.ContactName AS `Nome de contato`,
s.ShipperName AS `Empresa que fez o envio`,
o.OrderDate AS `Data do pedido`
FROM w3schools.orders as o
INNER JOIN w3schools.shippers as s ON o.ShipperID = s.ShipperID
INNER JOIN w3schools.customers as c ON o.CustomerID = c.CustomerID
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
