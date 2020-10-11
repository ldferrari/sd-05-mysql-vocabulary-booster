-- A primeira coluna deve possuir o alias "Nome completo" e exibir o nome completo da pessoa empregada
-- (não se esqueça do espaço entre o nome e o sobrenome).
-- A segunda coluna deve possuir o alias "Data de início" e exibir a data que a pessoa iniciou o cargo,
-- no formato brasileiro (dd/mm/aaaa). Ou seja, se a pessoa iniciou o cargo em questão no dia 2 de janeiro
-- de 1990, sua data de início deveria ser 02/01/1990.
-- A terceira coluna deve possuir o alias "Data de rescisão" e exibir a data que a pessoa saiu do cargo,
-- no formato brasileiro (dd/mm/aaaa). Ou seja, se a pessoa saiu do cargo em questão no dia 3 de setembro
-- de 1995, sua data de rescisão deveria ser 03/09/1995.
-- A quarta coluna deve possuir o alias "Anos trabalhados" e exibir, usando como base as datas de saída e 
-- entrada, os anos que a pessoa ficou no cargo em questão, arredondados para duas casas decimais.
-- Os resultados devem estar ordenados pelo nome completo das pessoas empregadas em ordem alfabética. 
-- Em caso de empate no nome completo, ordene os resultados pelos anos trabalhados por ela no cargo em questão,
-- em ordem crescente.

-- Nome completo - first_name + last_name from employees
-- Data de início - start_date from job_history -> employee_id
-- Data de rescisão - end_date from job_history -> employee_id
-- Anos trabalhados - end - start arredondada 2 casas
-- HA - LPAD do PR do rafaelqleite

SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
CONCAT(LPAD(DAY(jh.START_DATE), 2, 0), '/', LPAD(MONTH(jh.START_DATE), 2, 0), '/', YEAR(jh.START_DATE)) AS 'Data de início',
CONCAT(LPAD(DAY(jh.END_DATE), 2, 0), '/', LPAD(MONTH(jh.END_DATE), 2, 0), '/', YEAR(jh.END_DATE)) AS 'Data de rescisão',
ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE)/365, 2) AS 'Anos trabalhados'
FROM hr.employees AS e
JOIN hr.job_history AS jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY 1, 4;
