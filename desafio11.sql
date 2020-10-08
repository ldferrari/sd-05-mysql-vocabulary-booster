SELECT p.ContactName AS 'Nome',
p.Country AS 'País',
(
SELECT COUNT(t.Country) FROM w3schools.customers AS t 
WHERE p.Country = t.Country
)- 1 AS 'Número de compatriotas'
FROM w3schools.customers AS p
HAVING `Número de compatriotas` > 0
Order By 1;
