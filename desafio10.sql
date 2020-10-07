-- Exibe todos os produtos que já foram pedidos, que possuem uma média de quantidade nos pedidos registrados acima de 20.00.
-- Usando o banco w3schools como referência, monte uma query que exiba quatro colunas:
-- A primeira coluna deve possuir o alias "Produto" e exibir o nome do produto.
-- A segunda coluna deve possuir o alias "Mínima" e exibir a quantidade mínima que já foi pedida desse produto.
-- A terceira coluna deve possuir o alias "Máxima" e exibir a quantidade máxima que já foi pedida desse produto.
-- A quarta coluna deve deve possuir o alias "Média" e exibir a média de quantidade nos pedidos deste produto, arredondada para duas casas decimais.
-- Os resultados devem estar ordenados pela média de quantidade nos pedidos em ordem crescente. Em caso de empate na média,
-- os resultados devem ser ordenados pelo nome do produto em ordem alfabética.

SELECT p.ProductName AS 'Produto', -- Exibe o nome do produto
MIN(o.Quantity) AS 'Mínima', -- Exibe a quantidade mínima já pedida do produto
MAX(o.Quantity) AS 'Máxima', -- Exibe a quantidade máxima já pedida do produto
ROUND(AVG(o.Quantity),2) AS 'Média' -- Média das quantidades já pedidas deste produto
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS o -- Seleciona as tabelas e define o ALIAS
ON p.ProductID = o.ProductID -- Relação de products com order_details
GROUP BY p.ProductID -- Agrupa os resultados pelo ID do produto
HAVING ROUND(AVG(o.Quantity),2) > 20 -- 'Filtra' somente os resultados que tem média > 20
ORDER BY `Média`, `Produto`; -- Ordena pela média, mas se empatar pelo nome do produto
