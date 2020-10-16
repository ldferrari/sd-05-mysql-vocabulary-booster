-- Exibe todas as pessoas clientes que possuem compatriotas, mostrando a quantidade de compatriotas para cada pessoa cliente.
-- Usando o banco w3schools como referência, monte uma query que exiba três colunas:
-- A primeira coluna deve possuir o alias "Nome" e exibir o nome de contato da pessoa cliente.
-- A segunda coluna deve possuir o alias "País" e exibir o nome do país em que a pessoa reside.
-- A terceira coluna deve possuir o alias "Número de compatriotas" e exibir o número de pessoas que moram no mesmo país.
-- Os resultados devem estar ordenados pelo nome de contato da pessoa cliente em ordem alfabética.

SELECT emp.ContactName AS 'Nome',
  emp.Country AS 'País',
  COUNT(1) AS 'Número de compatriotas'
FROM w3schools.customers as emp, w3schools.customers AS comp
WHERE emp.Country = comp.Country AND emp.CustomerID != comp.CustomerID
GROUP BY emp.ContactName, emp.Country
ORDER BY emp.ContactName;