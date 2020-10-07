SELECT
a.contactName AS 'Nome',
a.country AS 'País',
COUNT(a.country) - 1 AS `Número de compatriotas`
FROM w3schools.customers AS a, w3schools.customers AS b
WHERE a.country = b.country
GROUP BY a.contactName, a.country HAVING `Número de compatriotas` > 0
ORDER BY a.contactName;
