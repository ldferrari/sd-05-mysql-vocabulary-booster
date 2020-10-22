SELECT cn.ContactName As 'Nome de contato', sn.ShipperName AS 'Empresa que fez o envio', od.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS od
INNER JOIN w3schools.customers as cn ON cn.CustomerID = od.CustomerID
INNER JOIN w3schools.shippers AS sn ON od.ShipperID = sn.ShipperID
WHERE sn.ShipperName IN('Speedy Express', 'United Package')
ORDER BY 1, 2, 3;
