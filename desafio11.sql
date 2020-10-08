SELECT A.ContactName AS Nome, A.Country AS País, COUNT(A.Country) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS A, w3schools.customers AS B
WHERE A.Country = B.Country
GROUP BY A.ContactName
ORDER BY A.ContactName;
