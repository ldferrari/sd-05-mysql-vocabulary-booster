SELECT cus.ContactName AS 'Nome de contato',
  shi.ShipperName AS 'Empresa que fez o envio',
  ors.OrderDate as 'Data do pedido'
FROM w3schools.customers AS cus
INNER JOIN w3schools.orders AS ors ON (cus.CustomerId = ors.CustomerId)
INNER JOIN w3schools.shippers AS shi ON (ors.ShipperId = shi.ShipperId)
WHERE shi.ShipperName IN ("Speedy Express", "United Package")
ORDER BY 1, 2, 3
