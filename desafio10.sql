-- Exibe todos os produtos que já foram pedidos, que possuem uma média de quantidade nos pedidos registrados acima de 20.00.
-- Usando o banco w3schools como referência, monte uma query que exiba quatro colunas:
-- A primeira coluna deve possuir o alias "Produto" e exibir o nome do produto.
-- A segunda coluna deve possuir o alias "Mínima" e exibir a quantidade mínima que já foi pedida desse produto.
-- A terceira coluna deve possuir o alias "Máxima" e exibir a quantidade máxima que já foi pedida desse produto.
-- A quarta coluna deve deve possuir o alias "Média" e exibir a média de quantidade nos pedidos deste produto, arredondada para duas casas decimais.
-- Os resultados devem estar ordenados pela média de quantidade nos pedidos em ordem crescente.
-- Em caso de empate na média, os resultados devem ser ordenados pelo nome do produto em ordem alfabética.

SELECT pro.ProductName AS 'Produto',
  MIN(odt.Quantity) AS 'Mínima',
  MAX(odt.Quantity) AS 'Máxima',
  ROUND(AVG(odt.Quantity), 2) AS 'Média'
FROM w3schools.products AS pro
INNER JOIN w3schools.order_details AS odt ON(pro.ProductID = odt.ProductID)
GROUP BY pro.ProductID
HAVING ROUND(AVG(odt.Quantity), 2) > 20.00
ORDER BY 4, 1;
