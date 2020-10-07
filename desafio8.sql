SELECT
C.ContactName `Nome de contato`,
S.ShipperName `Empresa que fez o envio`,
O.OrderDate `Data do pedido`
FROM w3schools.orders AS O
INNER JOIN w3schools.customers AS C
ON O.CustomerID = C.CustomerID
INNER JOIN w3schools.shippers AS S
ON S.ShipperID = O.ShipperID
WHERE S.ShipperName IN('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
