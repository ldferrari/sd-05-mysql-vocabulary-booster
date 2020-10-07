-- Exibe todas as pessoas consumidoras cujos pedidos já foram enviados pelas empresas "Speedy Express" ou "United Package".
-- Para isso, usando o banco w3schools como referência, monte uma query que exiba três colunas:
-- A primeira coluna deve possuir o alias "Nome de contato" e exibir o nome de contato da pessoa consumidora.
-- A segunda coluna deve possuir o alias "Empresa que fez o envio" e exibir o nome da empresa que efetuou o envio do pedido.
-- A terceira coluna deve possuir o alias "Data do pedido" e exibir a data que o pedido foi feito.
-- Seus resultados devem estar ordenados pelo nome de contato da pessoa consumidora em ordem alfabética. Em caso de empate no nome de contato,
-- ordene os resultados pelo nome da empresa que fez o envio do produto em ordem alfabética e caso há empresas com o mesmo nome, ordene os resultados pela data do pedido em ordem crescente.

SELECT c.ContactName AS 'Nome de contato', -- Exibe nome completo do consumidor: tabela customers
sp.ShipperName AS 'Empresa que fez o envio', -- Exibe empresa que fez o envio: tabela shippers
od.OrderDate AS 'Data do pedido' -- Seleciona a data do pedido: tabela orders
FROM w3schools.customers AS c
INNER JOIN w3schools.orders AS od ON c.CustomerID = od.CustomerID -- Relação customers com orders
INNER JOIN w3schools.shippers AS sp ON od.ShipperID = sp.ShipperID -- Relação shippers com orders
WHERE sp.ShipperName = 'Speedy Express' OR sp.ShipperName = 'United Package' -- Seleção dos meses de interesse: jan, fev ou março
ORDER BY `Nome de contato`, `Empresa que fez o envio`, od.OrderDate; -- Ordenação pelo nome em ordem alfabética em caso de empate pelo nome da empresa e por último pela data do pedido
