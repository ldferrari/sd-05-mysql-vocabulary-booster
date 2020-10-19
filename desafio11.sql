SELECT employee.ContactName as 'Nome',
employee.Country as 'País',
count(1) as 'Número de compatriotas'
FROM w3schools.customers as employee, w3schools.customers AS compatriot
WHERE employee.Country = compatriot.Country and employee.CustomerID != compatriot.CustomerID
GROUP BY employee.ContactName, employee.Country
ORDER BY employee.ContactName;
