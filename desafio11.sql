SELECT p.ContactName AS 'Nome',
p.Country AS 'País',
(
SELECT COUNT(t.Country)
FROM w3schools.customers AS t
WHERE t.Country = p.Country
) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS p
ORDER BY 1; 
