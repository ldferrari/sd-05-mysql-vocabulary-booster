SELECT C.ContactName AS 'Nome',
C.Country AS 'País',
-- Tem que remover si mesmo
COUNT(C.CustomerID) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS C
INNER JOIN w3schools.customers AS C2
ON C.Country = C2.Country
GROUP BY C.CustomerID
HAVING COUNT(C.CustomerID) > 1
ORDER BY C.ContactName;
