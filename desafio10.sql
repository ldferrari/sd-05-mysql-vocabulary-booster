SELECT
p.productname AS 'Produto',
MIN(o.quantity) AS 'Mínima',
MAX(o.quantity) AS 'Máxima',
ROUND(AVG(o.quantity), 2) AS 'Média'
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS o
ON p.productid = o.productid
GROUP BY p.productname
ORDER BY AVG(o.quantity), p.productname;