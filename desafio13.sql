SELECT pro.ProductName AS 'Produto',
  pro.Price AS 'Preço'
FROM w3schools.products AS pro
LEFT JOIN w3schools.order_details AS odt ON (pro.ProductID = odt.ProductID)
WHERE odt.Quantity > 80
ORDER BY pro.ProductName;
