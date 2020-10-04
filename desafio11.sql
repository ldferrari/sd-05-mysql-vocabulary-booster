SELECT p.ContactName AS 'Nome',
p.Country AS 'País',
(
SELECT COUNT(t.Country)
FROM w3schools.customers AS t
WHERE t.Country = p.Country
) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS p
HAVING `Número de compatriotas` > 0
ORDER BY 1; 
-- Transparência: Verifiquei o PR do Procopio da turma 4 e descobri que é possível usar o HAVING sem o GROUP BY
-- Também descobri como faço para selecionar uma coluna que possui um alias com uma string com espaços através desse 'template literals'
-- O 'template literals' não funciona no WHERE, Só no HAVING'
