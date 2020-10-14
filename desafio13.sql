select P.ProductName as 'Produto',
P.Price as 'Preço'
from w3schools.products as P
JOIN w3schools.order_details AS OD
ON P.ProductID=OD.ProductID
where OD.Quantity>80
order by `Produto`;
