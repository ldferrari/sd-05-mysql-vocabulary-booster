SELECT 
ContactName as 'Nome',
cNormal.Country as 'País',
(SELECT COUNT(Country) from customers as cCount WHERE cCount.Country = cNormal.Country) -1 as 'Número de compatriotas'
FROM customers as cNormal
HAVING `Número de compatriotas` > 0
ORDER BY `Nome`;
