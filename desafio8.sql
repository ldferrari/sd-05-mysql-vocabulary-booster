SELECT C.CustomerName AS "Nome de contato",
S.ShipperName AS "Empresa que fez o envio",
O.OrderDate AS "Data do pedido"
FROM w3schools.customers AS C
INNER JOIN w3schools.orders AS O
ON O.CustomerID = C.CustomerID
INNER JOIN w3schools.Shippers AS S
ON S.ShipperID = O.ShipperID
ORDER BY C.CustomerName, S.ShipperName, O.OrderDate
