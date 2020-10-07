SELECT b.ContactName as Nome,
b.Country as País,
COUNT(a.Country) as 'Número de compatriotas'
FROM customers as a, customers as b
WHERE b.Country = a.Country
GROUP BY b.CustomerID
ORDER BY `Nome`;
