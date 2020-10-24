SELECT C.ContactName AS 'Nome de contato',
sh.ShipperName AS 'Empresa que fez o envio',
O.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS O
INNER JOIN w3schools.customers AS C
ON O.CustomerID = C.CustomerID
INNER JOIN w3schools.shippers AS sh
ON O.ShipperID = sh.ShipperID
WHERE sh.ShipperName IN ("Speedy Express", "United Package")
ORDER BY 1,2,3;
