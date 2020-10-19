SELECT
customer.ContactName as 'Nome de contato',
ship.ShipperName as 'Empresa que fez o envio',
ord.OrderDate as 'Data do pedido'
FROM w3schools.customers as customer
JOIN
w3schools.orders as ord
ON(ord.CustomerId = customer.CustomerId)
JOIN
w3schools.shippers AS ship
ON(ship.ShipperId = ord.ShipperId)
WHERE ship.ShipperName = 'Speedy Express' or ship.ShipperName = 'United Package'
ORDER BY
customer.ContactName,
ship.ShipperName,
ord.OrderDate;
