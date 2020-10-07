-- Faça um relatório que mostra o histórico de cargos das pessoas empregadas. Para isso, usando o banco hr como referência, monte uma query que exiba quatro colunas:

-- A primeira coluna deve possuir o alias "Nome completo" e exibir o nome completo da pessoa empregada (não se esqueça do espaço entre o nome e o sobrenome).

-- A segunda coluna deve possuir o alias "Cargo" e exibir o nome do cargo da pessoa.

-- A terceira coluna deve possuir o alias "Data de início do cargo" e exibir a data que a pessoa iniciou o cargo.

-- A quarta coluna deve possuir o alias "Departamento" e mostrar o nome do departamento em que a pessoa exerceu seu cargo.

-- Os resultados devem estar ordenados pelo nome completo das pessoas empregadas em ordem decrescente. Em caso de empate no nome completo, ordene os resultados pelo nome do cargo em ordem alfabética.

SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS 'Nome completo',
jobs.JOB_TITLE AS 'Cargo',
job_history.START_DATE AS 'Data de início do cargo',
departments.department_name AS 'Departamento'
FROM hr.job_history

JOIN hr.jobs ON hr.jobs.JOB_ID = hr.job_history.JOB_ID
JOIN hr.employees ON hr.employees.EMPLOYEE_ID = hr.job_history.EMPLOYEE_ID
JOIN hr.departments ON hr.departments.DEPARTMENT_ID = hr.job_history.DEPARTMENT_ID

ORDER BY `Nome completo` DESC, Cargo;
