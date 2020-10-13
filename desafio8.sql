SELECT
CS.ContactName AS 'Nome de contato',
SH.ShipperName AS 'Empresa que fez o envio', 
ORD.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS CS
INNER JOIN w3schools.orders AS ORD 
ON CS.CustomerID = ORD.CustomerID
INNER JOIN w3schools.shippers AS SH
ON ORD.ShipperID = SH.ShipperID
WHERE SH.ShipperName IN ("Speedy Express", "United Package")
ORDER BY CS.ContactName ASC, SH.ShipperName ASC, ORD.OrderDate ASC
