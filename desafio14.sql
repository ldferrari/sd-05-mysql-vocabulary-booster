SELECT Country as "País" from customers  
UNION 
SELECT Country as "País" from suppliers
ORDER BY `País` ASC LIMIT 5; 
