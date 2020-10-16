-- Com base nisso, usando o banco hr como referência, monte uma query que exiba seis colunas:
-- A primeira coluna deve possuir o alias "Nome completo funcionário 1" e exibir o nome completo da pessoa funcionária
-- --- (não se esqueça do espaço entre o nome e o sobrenome).
-- A segunda coluna deve possuir o alias "Salário funcionário 1" e exibir o salário dessa pessoa.
-- A terceira coluna deve possuir o alias "Telefone funcionário 1" e exibir o número de telefone dessa pessoa.
-- A quarta coluna deve possuir o alias "Nome completo funcionário 2" e exibir o nome completo da pessoa funcionária
-- --- associada que possui o mesmo cargo (não se esqueça do espaço entre o nome e o sobrenome).
-- A quinta coluna deve possuir o alias "Salário funcionário 2" e exibir o salário da pessoa funcionária associada que possui o mesmo cargo.
-- A sexta coluna deve possuir o alias "Telefone funcionário 2" e exibir o número da pessoa funcionária associada que possui o mesmo cargo.
-- Os resultados devem estar ordenados pela coluna "Nome completo funcionário 1" em ordem alfabética.
-- Em caso de empate, os resultados devem ser ordenados pela coluna Nome completo funcionário 2" em ordem alfabética.

SELECT CONCAT_WS(' ', emp.FIRST_NAME, emp.LAST_NAME) AS 'Nome completo funcionário 1',
  emp.SALARY AS 'Salário funcionário 1',
  emp.PHONE_NUMBER AS 'Telefone funcionário 1',
  CONCAT_WS(' ', slf.FIRST_NAME, slf.LAST_NAME) AS 'Nome completo funcionário 2',
  slf.SALARY AS 'Salário funcionário 2',
  slf.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS emp, hr.employees AS slf
WHERE emp.JOB_ID = slf.JOB_ID AND emp.EMPLOYEE_ID <> slf.EMPLOYEE_ID
ORDER BY CONCAT_WS(' ', emp.FIRST_NAME, emp.LAST_NAME), CONCAT_WS(' ', slf.FIRST_NAME, slf.LAST_NAME);