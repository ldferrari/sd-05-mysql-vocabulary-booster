SELECT EMP.ContactName AS 'Nome',
EMP.Country AS 'País',
COUNT(1) AS 'Número de compatriotas'
FROM w3schools.customers as EMP, w3schools.customers AS COMP
WHERE EMP.Country = COMP.Country AND EMP.CustomerID != COMP.CustomerID
GROUP BY EMP.ContactName, EMP.Country
ORDER BY EMP.ContactName;
