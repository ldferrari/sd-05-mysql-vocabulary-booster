SELECT pro.ProductName AS Produto,
    pro.Price AS Preço
FROM w3schools.products AS pro
    INNER JOIN w3schools.order_details AS det
    ON pro.ProductID = det.ProductID
WHERE det.Quantity > 80
ORDER BY Produto;
