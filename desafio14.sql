SELECT
C.Country País
FROM w3schools.customers AS C
INNER JOIN w3schools.suppliers AS S
ON C.Country = S.Country
GROUP BY País
ORDER BY País
LIMIT 5;
