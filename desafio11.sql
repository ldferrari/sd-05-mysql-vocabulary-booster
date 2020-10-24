SELECT A.CustomerName AS 'Nome',
A.Country AS 'País',
(
SELECT COUNT(B.Country)
FROM w3schools.customers AS B
WHERE B.Country = A.Country
) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS A
HAVING `Número de compatriotas`
ORDER BY Nome;
