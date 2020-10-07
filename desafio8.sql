SELECT cus.ContactName AS "Nome de contato",
ship.ShipperName AS "Empresa que fez o envio",
ord.OrderDate AS "Data do pedido"
FROM w3schools.customers AS cus
INNER JOIN w3schools.orders AS ord
ON cus.CustomerID = ord.CustomerID
INNER JOIN w3schools.shippers AS ship
ON ship.ShipperID = ord.ShipperID
WHERE ship.ShipperName IN('Speedy Express', 'United Package')
ORDER BY 1, 2, 3;
