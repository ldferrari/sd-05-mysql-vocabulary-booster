SELECT
C.ContactName Nome,
C.Country País,
(
SELECT COUNT(C2.Country)
FROM w3schools.customers AS C2
WHERE C2.Country = C.Country
) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS C
HAVING `Número de compatriotas` > 0
ORDER BY Nome;
