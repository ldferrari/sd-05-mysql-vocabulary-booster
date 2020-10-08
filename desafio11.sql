SELECT A.contactName AS 'Nome',
A.country AS 'País',
COUNT(B.contactName) AS 'Número de compatriotas'
FROM w3schools.customers AS A, w3schools.customers AS B
WHERE A.customerId <> B.customerId
AND A.country = B.country
GROUP BY A.contactName
ORDER BY A.contactName;
