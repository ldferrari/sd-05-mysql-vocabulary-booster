SELECT CONCAT(FIRST_NAME," ", LAST_NAME) AS `Nome completo`, 
JOB_TITLE AS 'Cargo',
START_DATE AS 'Data de início do cargo',
DEPARTMENT_NAME as 'Departamento'
FROM employees 
INNER JOIN jobs ON employees.JOB_ID = jobs.JOB_ID 
INNER JOIN job_history ON employees.JOB_ID = job_history.JOB_ID
INNER JOIN departments ON employees.DEPARTMENT_ID = departments.DEPARTMENT_ID
ORDER BY `Nome completo`, `Cargo` ASC;
