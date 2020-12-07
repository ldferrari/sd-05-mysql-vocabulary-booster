SELECT C.ContactName AS `Nome`,
C.Country AS `País`,
COUNT(C2.Country) AS `Número de compatriotas`
FROM w3schools.customers AS C,
w3schools.customers AS C2
WHERE C.ContactName <> C2.ContactName AND C.Country = C2.Country
GROUP BY C.ContactName, C.Country
ORDER BY 1;
