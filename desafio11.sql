SELECT mc.ContactName AS 'Nome',
mc.Country AS 'País',
(SELECT COUNT(*) FROM w3schools.customers AS c 
WHERE c.Country = mc.Country AND mc.CustomerID <> c.CustomerID
GROUP BY Country) AS 'Número de compatriotas'
FROM w3schools.customers AS mc
HAVING `Número de compatriotas` IS NOT NULL
ORDER BY `Nome`;
