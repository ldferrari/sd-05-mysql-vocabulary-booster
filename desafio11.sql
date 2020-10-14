SELECT * FROM w3schools.customers;
SELECT C.ContactName AS 'Nome',
C.Country AS 'País',
COUNT(CC.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS C,w3schools.customers AS CC
WHERE C.Country=CC.Country AND C.ContactName<>CC.ContactName
GROUP BY `Nome`
ORDER BY C.ContactName;
