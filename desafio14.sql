SELECT DISTINCT(grupo.Country) AS 'País'
FROM (
  SELECT sup.Country
  FROM w3schools.suppliers AS sup
  UNION
  SELECT cus.Country
  FROM w3schools.customers AS cus
) AS grupo
ORDER BY grupo.Country
LIMIT 5;
