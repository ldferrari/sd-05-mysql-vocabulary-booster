SELECT cus.ContactName AS 'Nome de contato',
    shi.ShipperName AS 'Empresa que fez o envio',
    odr.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS odr
    INNER JOIN w3schools.customers AS cus
    ON cus.CustomerID = odr.CustomerID
    INNER JOIN w3schools.shippers AS shi
    ON odr.shipperID = shi.shipperID
WHERE shi.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY 1, 2, 3;
