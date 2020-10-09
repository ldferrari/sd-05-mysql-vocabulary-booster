-- Exibe todas as pessoas clientes que possuem compatriotas, mostrando a quantidade de compatriotas para cada pessoa cliente.
-- Usando o banco w3schools como referência, monte uma query que exiba três colunas:
-- A primeira coluna deve possuir o alias "Nome" e exibir o nome de contato da pessoa cliente.
-- A segunda coluna deve possuir o alias "País" e exibir o nome do país em que a pessoa reside.
-- A terceira coluna deve possuir o alias "Número de compatriotas" e exibir o número de pessoas que moram no mesmo país.
-- Os resultados devem estar ordenados pelo nome de contato da pessoa cliente em ordem alfabética.

SELECT B.ContactName AS 'Nome',
B.Country AS 'País',
COUNT(A.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS A,
w3schools.customers AS B
WHERE A.Country = B.Country -- SELF JOIN
AND A.ContactName <> B.ContactName -- desconsidera a pessoa em si, busca só valores em que o nome é diferente
GROUP BY B.CustomerID
ORDER BY `Nome`;
