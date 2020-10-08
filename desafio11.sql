SELECT B.ContactName AS Nome, A.Country AS País, COUNT(1) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS A, w3schools.customers AS B
WHERE A.Country = B.Country
GROUP BY B.CustomerID
ORDER BY B.ContactName;
