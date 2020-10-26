SELECT
customers.contactname AS 'Nome de contato',
shippers.shippername AS 'Empresa que fez o envio',
orders.orderdate AS 'Data do pedido'
FROM w3schools.customers
INNER JOIN w3schools.orders
ON orders.customerid = customerid
INNER JOIN w3schools.shippers
ON shippers.shipperid = orders.shipperid
WHERE `Empresa que fez o envio` = 'Speedy Express' OR `Empresa que fez o envio` = 'United Package'
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
