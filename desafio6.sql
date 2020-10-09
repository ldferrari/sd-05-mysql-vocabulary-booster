-- NOME COMPLETO - employees (employee_id presente na job_history);
-- CARGO - jobs (job_id presente no job_history ou employees);
-- DATA - job_history
-- DEPARTAMENTO - departments (department_id presente na job_history);

SELECT CONCAT(FIRST_NAME,' ', LAST_NAME) AS 'Nome completo',
JOB_TITLE AS 'Cargo',
START_DATE AS 'Data de início do cargo',
DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS e
JOIN hr.job_history AS jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
JOIN hr.jobs AS j ON jh.JOB_ID = j.JOB_ID
JOIN hr.departments AS d ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, Cargo;
