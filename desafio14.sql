SELECT DISTINCT suppliers.country AS País FROM w3schools.suppliers
UNION SELECT customers.country AS País FROM w3schools.customers
GROUP BY País
ORDER BY País
LIMIT 5;
