SELECT
A.ContactName AS 'Nome',
A.Country AS 'País',
(SELECT COUNT(B.Country)
FROM w3schools.customers AS B
WHERE A.Country = B.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS A
HAVING `Número de compatriotas` > 0
ORDER BY Nome;
