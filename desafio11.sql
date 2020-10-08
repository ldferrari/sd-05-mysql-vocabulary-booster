select * from employees;
select * from orders;
select * from products;
select * from suppliers;
select * from order_details;
select * from categories;
select * from customers;

SELECT DISTINCT(contactName) AS 'Nome',
country AS 'País',
COUNT(country) AS 'Número de compatriotas'
FROM w3schools.customers
GROUP BY country
ORDER BY contactName;

SELECT A.contactName AS 'Nome1',A.contactName AS 'Nome2',
COUNT(A.country) AS 'País'
-- COUNT(country) AS 'Número de compatriotas'
FROM w3schools.customers A, w3schools.customers B
WHERE A.customerId <> B.customerId
AND A.country = B.country
GROUP BY A.country
ORDER BY A.contactName;
