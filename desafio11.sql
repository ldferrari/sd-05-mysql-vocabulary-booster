SELECT a1.ContactName AS 'Nome', a2.Country AS 'País', (COUNT(*) - 1) AS 'Número de compatriotas'
FROM w3schools.customers AS a1, w3schools.customers AS a2
WHERE a1.Country = a2.Country
GROUP BY a1.CustomerID
HAVING `Número de compatriotas` > 0
ORDER BY a1.ContactName;
