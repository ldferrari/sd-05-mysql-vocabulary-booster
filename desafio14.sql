SELECT cu.Country AS 'País' FROM w3schools.customers AS cu
UNION
SELECT su.Country AS 'País' FROM w3schools.suppliers AS su
ORDER BY País LIMIT 5;
