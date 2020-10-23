SELECT cus.ContactName AS 'Nome', cus.Country AS 'País', COUNT(1) AS 'Número de compatriotas'
FROM w3schools.customers AS cus, w3schools.customers AS com
WHERE cus.Country = com.Country AND cus.CustomerID != com.CustomerID
GROUP BY cus.ContactName, cus.Country
ORDER BY 1;
