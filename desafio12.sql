-- A primeira coluna deve possuir o alias "Nome completo funcionário 1" e exibir 
-- o nome completo da pessoa funcionária (não se esqueça do espaço entre o nome e o sobrenome).
-- A segunda coluna deve possuir o alias "Salário funcionário 1" e exibir o salário dessa pessoa.
-- A terceira coluna deve possuir o alias "Telefone funcionário 1" e exibir o número de telefone dessa pessoa.
-- A quarta coluna deve possuir o alias "Nome completo funcionário 2" e exibir o nome completo da pessoa funcionária associada que possui o mesmo cargo (não se esqueça do espaço entre o nome e o sobrenome).
-- A quinta coluna deve possuir o alias "Salário funcionário 2" e exibir o salário da pessoa funcionária associada que possui o mesmo cargo.
-- A sexta coluna deve possuir o alias "Telefone funcionário 2" e exibir o número da pessoa funcionária associada que possui o mesmo cargo.
-- Os resultados devem estar ordenados pela coluna "Nome completo funcionário 1" em ordem alfabética. Em caso de empate, os resultados devem ser ordenados pela coluna Nome completo funcionário 2" em ordem alfabética.

SELECT CONCAT(a.FIRST_NAME, ' ', a.LAST_NAME) AS 'Nome completo funcionário 1',
a.SALARY AS 'Salário funcionário 1',
a.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(b.FIRST_NAME, ' ', b.LAST_NAME) AS 'Nome completo funcionário 2',
a.SALARY AS 'Salário funcionário 2',
a.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS a, hr.employees AS b
WHERE a.JOB_ID = b.JOB_ID AND a.EMPLOYEE_ID <> b.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
