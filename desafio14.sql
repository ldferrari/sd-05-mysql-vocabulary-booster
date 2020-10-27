SELECT 
c.country AS 'País'
FROM w3schools.customers AS c
WHERE EXISTS(
SELECT s.country FROM w3schools.suppliers AS s);

