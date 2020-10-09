-- desafio 11 
SELECT A.ContactName AS 'Nome',
A.Country AS 'País',
COUNT(B.Country) -1 AS 'Número de compatriotas'
FROM w3schools.customers A
INNER JOIN w3schools.customers B
ON A.Country = B.Country
GROUP BY `Nome`
HAVING `Número de compatriotas` > 0
ORDER BY `Nome`;
