SELECT C.ContactName AS 'Nome' , C.Country AS 'País',
	(select count(S.Country)-1
	FROM w3schools.customers AS S
	WHERE S.Country = C.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS C
HAVING `Número de compatriotas` > 0
ORDER BY `Nome`;
