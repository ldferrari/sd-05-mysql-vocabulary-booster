-- Produto / ProductName tabela products
-- Mínima / menor quantity da tabela order_details com product_id
-- Máxima / maior quantity da tabela order_details com product_id
-- Média / média de todas as quantidades da tabela order_details com o product_id

SELECT p.ProductName AS 'Produto',
MIN(ord.quantity) AS 'Mínima',
MAX(ord.quantity) AS 'Máxima',
ROUND(AVG(quantity), 2) AS 'Média'
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS ord ON p.ProductID = ord.ProductID
GROUP BY (ord.ProductID)
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
