-- Desafio 10
-- Exibe todos os produtos que já foram pedidos, que possuem uma média de quantidade nos pedidos registrados acima de 20.00. Usando o banco w3schools como referência, 
-- monte uma query que exiba quatro colunas:
-- 
-- A primeira coluna deve possuir o alias "Produto" e exibir o nome do produto.
-- 
-- A segunda coluna deve possuir o alias "Mínima" e exibir a quantidade mínima que já foi pedida desse produto.
-- 
-- A terceira coluna deve possuir o alias "Máxima" e exibir a quantidade máxima que já foi pedida desse produto.
-- 
-- A quarta coluna deve deve possuir o alias "Média" e exibir a média de quantidade nos pedidos deste produto, arredondada para duas casas decimais.
-- 
-- Os resultados devem estar ordenados pela média de quantidade nos pedidos em ordem crescente. Em caso de empate na média, 
-- os resultados devem ser ordenados pelo nome do produto em ordem alfabética.
SELECT
ProductName AS 'Produto',
MIN(Quantity) AS 'Mínima',
MAX(Quantity) AS 'Máxima',
ROUND(AVG(Quantity), 2) AS `Média`
FROM w3schools.order_details AS od, w3schools.orders AS o, w3schools.products AS p
WHERE od.OrderID = o.OrderID AND od.ProductID = p.ProductID
GROUP BY ProductName
HAVING `Média` > 20
ORDER BY `Média`, ProductName;
