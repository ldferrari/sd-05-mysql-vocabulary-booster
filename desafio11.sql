-- inicialmente tentei SELF JOIN (pode ser que dê dessa forma)
SELECT
c.contactname AS 'Nome',
c.country AS 'País',
COUNT(d.country) AS 'Número de compatriotas'
FROM w3schools.customers AS c, w3schools.customers AS d
WHERE c.customerid <> d.customerid AND c.country = d.country
GROUP BY c.customerid
ORDER BY c.contactname;
-- corrigindo sintaxe (conforme evaluator job)
