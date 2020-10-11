SELECT cus.Country AS 'País'FROM w3schools.customers AS cus
UNION
SELECT sup.Country AS 'País'FROM w3schools.suppliers AS sup
ORDER BY 1 LIMIT 5;
