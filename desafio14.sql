(SELECT Country AS Países FROM w3schools.customers)
UNION
(SELECT Country FROM w3schools.suppliers)
ORDER BY Países
LIMIT 5;
