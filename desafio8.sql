SELECT cu.ContactName AS 'Nome de Contato',
sh.ShipperName AS 'Empresa que fez o envio',
od.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS od
INNER JOIN w3schools.customers AS cu
ON od.CustomerID = cu.CustomerID
INNER JOIN w3schools.shippers AS sh
ON od.ShipperID = sh.ShipperID
WHERE sh.ShipperName IN('Speedy Express', 'United Package')
ORDER BY 1, 2, 3;
