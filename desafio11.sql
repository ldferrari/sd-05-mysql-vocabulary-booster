SELECT t1.ContactName AS Nome,
t1.Country as País,
(SELECT COUNT(t2.Country) - 1
FROM w3schools.customers AS t2
WHERE t1.Country = t2.Country)
AS `Número de compatriotas`
FROM w3schools.customers AS t1
HAVING `Número de compatriotas` > 0
ORDER BY Nome;
