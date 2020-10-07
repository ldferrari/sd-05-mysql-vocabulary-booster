SELECT b.ContactName as Nome,
b.Country as País,
COUNT(b.Country) as 'Número de compatriotas'
FROM customers as a, customers as b
WHERE a.Country = b.Country AND b.ContactName <> a.ContactName
GROUP BY b.CustomerID
ORDER BY `Nome`;
