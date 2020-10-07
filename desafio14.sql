SELECT DISTINCT c.Country as 'País' FROM w3schools.customers AS c
UNION
SELECT DISTINCT s.Country as 'País' FROM w3schools.suppliers AS s
ORDER BY `País`
LIMIT 5;
