select C.ContactName as 'Nome de contato',
S.ShipperName as 'Empresa que fez o envio',
O.OrderDate as 'Data do pedido'
from w3schools.customers as C
join w3schools.orders as O ON C.CustomerID=O.CustomerID
join w3schools.shippers as S ON S.ShipperID=O.ShipperID
where S.ShipperName IN ('Speedy Express','United Package')
order by `Nome de contato`, `Empresa que fez o envio`,
`Data do pedido`;
