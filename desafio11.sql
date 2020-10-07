SELECT a.ContactName AS 'Nome',
a.Country AS 'País',
(COUNT(*) - 1) AS 'Número de compatriotas' -- To avoid counting the own person as his/her own copatriot

FROM w3schools.customers AS a, w3schools.customers AS b -- We have to compare between the same
WHERE a.Country = b.Country
GROUP BY a.CustomerID -- To show Count, using the common column
ORDER BY a.ContactName;
