SELECT B.ContactName AS Nome, A.Country AS País, COUNT(B.ContactName) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS A, w3schools.customers AS B
WHERE A.Country = B.Country
GROUP BY B.ContactName
ORDER BY B.ContactName;
