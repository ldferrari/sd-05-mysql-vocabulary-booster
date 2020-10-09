-- SELECT * FROM hr.job_history;
-- SELECT * FROM hr.employees;
-- SELECT * FROM hr.jobs;
-- SELECT * FROM hr.departments;
-- NOME COMPLETO - employees (employee_id presente na job_history);
-- CARGO - jobs (job_id presente no job_history ou employees);
-- DATA - job_history
-- DEPARTAMENTO - departments (department_id presente na job_history);

SELECT CONCAT(e.FIRST_NAME,' ', e.LAST_NAME) AS 'Nome Completo',
j.JOB_TITLE AS 'Cargo',
jh.START_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.jobs AS j ON jh.JOB_ID = j.JOB_ID
INNER JOIN hr.departments AS d ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, Cargo;
