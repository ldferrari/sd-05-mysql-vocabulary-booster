SELECT CUS.ContactName AS 'Nome de contato', SH.ShipperName AS 'Empresa que fez o envio',
O.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS CUS
INNER JOIN w3schools.orders AS O
ON CUS.CustomerID = O.CustomerID
INNER JOIN w3schools.shippers AS SH
ON O.ShipperID = SH.ShipperID
WHERE SH.ShipperName = 'Speedy Express' OR SH.ShipperName = 'United Package'
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
