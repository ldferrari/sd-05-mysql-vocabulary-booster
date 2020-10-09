-- Usando o banco w3schools como referência, monte uma query que exiba três colunas:
-- A primeira coluna deve possuir o alias "Nome" e exibir o nome de contato
-- da pessoa cliente.
-- A segunda coluna deve possuir o alias "País" e exibir o nome do país em que
-- a pessoa reside.
-- A terceira coluna deve possuir o alias "Número de compatriotas" e exibir o
-- número de pessoas que moram no mesmo país.

-- 'Nome' - ContactName da tabela customers
-- 'País' -- Country da tabela customers
-- 'Número de compatriotas' count Country - 1 ?

SELECT A.ContactName AS 'Nome',
A.Country AS 'País',
COUNT(B.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS A, w3schools.customers AS B
WHERE A.Country = B.Country AND A.CustomerID <> B.CustomerID
GROUP BY A.CustomerID
ORDER BY `Nome`;
