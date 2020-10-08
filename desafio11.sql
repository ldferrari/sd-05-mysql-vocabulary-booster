SELECT A.ContactName AS Nome, B.Country AS País, COUNT(*) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS A, w3schools.customers AS B
WHERE A.Country = B.Country
GROUP BY A.ContactName
ORDER BY A.ContactName;
