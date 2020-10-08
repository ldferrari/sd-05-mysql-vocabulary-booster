-- Faça um relatório que mostra o histórico de cargos das pessoas empregadas. Para isso, usando o banco hr como referência,
-- --- monte uma query que exiba quatro colunas:
-- A primeira coluna deve possuir o alias "Nome completo" e exibir o nome completo da pessoa empregada
-- --- (não se esqueça do espaço entre o nome e o sobrenome).
-- A segunda coluna deve possuir o alias "Cargo" e exibir o nome do cargo da pessoa.
-- A terceira coluna deve possuir o alias "Data de início do cargo" e exibir a data que a pessoa iniciou o cargo.
-- A quarta coluna deve possuir o alias "Departamento" e mostrar o nome do departamento em que a pessoa exerceu seu cargo.
-- Os resultados devem estar ordenados pelo nome completo das pessoas empregadas em ordem decrescente.
-- Em caso de empate no nome completo, ordene os resultados pelo nome do cargo em ordem alfabética.

SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo', -- vem da tabela employees
JOB_TITLE AS 'Cargo', -- vem da tabela jobs
START_DATE AS 'Data de início do cargo', -- vem da tabela job_history
DEPARTMENT_NAME AS 'Departamento' -- vem da tabela departments
FROM hr.employees AS empl -- importa tabela employees
JOIN hr.job_history AS j_hst ON empl.EMPLOYEE_ID = j_hst.EMPLOYEE_ID -- relacionamento employees com job_history
JOIN hr.jobs AS jbs ON j_hst.JOB_ID = jbs.JOB_ID -- relacionamento jobs com job_history
JOIN hr.departments AS dpt ON dpt.DEPARTMENT_ID = j_hst.DEPARTMENT_ID -- relacionamento departments com job_history
ORDER BY `Nome completo` DESC, Cargo;
