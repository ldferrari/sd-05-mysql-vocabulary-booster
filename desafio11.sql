-- Exibe todas as pessoas clientes que possuem compatriotas, mostrando a quantidade de compatriotas para cada pessoa cliente.
-- Ou seja, suponha que houvese apenas quatro clientes:
--     Maria, do Brasil.
--     João, do Brasil.
--     Gabriela, do Brasil.
--     Alex, da Irlanda.
-- Logo, podemos dizer que Maria, João e Gabriela são compatriotas entre si, haja visto que as três pessoas moram no Brasil.
-- Além disso, podemos dizer que tanto Maria quanto João e Gabriela possuem duas pessoas compatriotas associadas.
-- Já Alex não possui compatriota, haja visto que não há outras pessoas da Irlanda.
-- Usando o banco w3schools como referência, monte uma query que exiba três colunas:
--     A primeira coluna deve possuir o alias "Nome" e exibir o nome de contato da pessoa cliente.
--     A segunda coluna deve possuir o alias "País" e exibir o nome do país em que a pessoa reside.
--     A terceira coluna deve possuir o alias "Número de compatriotas" e exibir o número de pessoas que moram no mesmo país.
-- Os resultados devem estar ordenados pelo nome de contato da pessoa cliente em ordem alfabética.

SELECT a.ContactName AS 'Nome',
a.Country AS 'País',
(SELECT COUNT(b.Country)
FROM w3schools.customers AS b
WHERE b.Country = a.Country
) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS a
WHERE (SELECT COUNT(b.Country)
FROM w3schools.customers AS b
WHERE b.Country = a.Country
) - 1 > 0
ORDER BY 1;
