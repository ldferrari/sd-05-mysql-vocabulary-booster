-- Referência: https://www.w3schools.com/sql/sql_union.asp
-- Referência: query desenvolvida com a ajuda de Sidnei Ramos

SELECT DISTINCT Country AS 'País' 
FROM w3schools.suppliers
UNION
SELECT DISTINCT Country AS 'País'
FROM w3schools.customers
ORDER BY `País`
LIMIT 5;
