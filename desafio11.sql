SELECT p.ContactName AS 'Nome',
p.Country AS 'País',
COUNT(t.Country) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS p, w3schools.customers AS t
WHERE p.Country = t.Country
GROUP BY 1
ORDER BY 1;
