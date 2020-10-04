SELECT cu.Country AS 'País' FROM w3schools.customers AS cu
UNION
SELECT su.Country AS 'País' FROM w3schools.suppliers AS su
ORDER BY 1 LIMIT 5;
