SELECT CC.Country AS 'País' FROM w3schools.customers AS CC
UNION
SELECT CS.Country AS 'País' FROM w3schools.suppliers AS CS
ORDER BY 1 LIMIT 5;
