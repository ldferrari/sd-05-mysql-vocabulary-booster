-- Exibe todas as pessoas clientes que possuem compatriotas, mostrando a quantidade de compatriotas para cada pessoa cliente.
-- Ou seja, suponha que houvese apenas quatro clientes:
-- Maria, do Brasil.
-- João, do Brasil.
-- Gabriela, do Brasil.
-- Alex, da Irlanda.
-- Logo, podemos dizer que Maria, João e Gabriela são compatriotas entre si, haja visto que as três pessoas moram no Brasil.
-- Além disso, podemos dizer que tanto Maria quanto João e Gabriela possuem duas pessoas compatriotas associadas.
-- Já Alex não possui compatriota, haja visto que não há outras pessoas da Irlanda.
-- Usando o banco w3schools como referência, monte uma query que exiba três colunas:
-- A primeira coluna deve possuir o alias "Nome" e exibir o nome de contato da pessoa cliente.
-- A segunda coluna deve possuir o alias "País" e exibir o nome do país em que a pessoa reside.
-- A terceira coluna deve possuir o alias "Número de compatriotas" e exibir o número de pessoas que moram no mesmo país.
-- Os resultados devem estar ordenados pelo nome de contato da pessoa cliente em ordem alfabética.

SELECT a2.ContactName AS 'Nome', a2.Country AS 'País', COUNT(a1.Country) AS 'Número de compatriotas'-- Seleciona o nome do cliente e do país com os ALIAS solicitados
FROM w3schools.customers AS a1, w3schools.customers AS a2
WHERE a1.Country = a2.Country AND a1.ContactName <> a2.ContactName -- Desconsidera a própria 'pessoa' - pega só os valores em que o nome é diferente
GROUP BY a2.CustomerID -- Função de agregação OBRIGATÓRIO uso do GROUP BY os valores no COUNT estão modificando o tempo todo o ID é o valor comum das duas tabelas
ORDER BY `Nome`; -- Ordena pelo nome
