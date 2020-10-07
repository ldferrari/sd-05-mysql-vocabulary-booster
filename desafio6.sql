SELECT CONCAT(FIRST_NAME," ", LAST_NAME) AS `Nome completo`, 
JOB_TITLE AS 'Cargo',
START_DATE AS 'Data de início do cargo',
DEPARTMENT_NAME as 'Departamento'
FROM job_history 
INNER JOIN jobs ON job_history.JOB_ID = jobs.JOB_ID 
INNER JOIN employees ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID  
INNER JOIN departments ON job_history.DEPARTMENT_ID = departments.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo` ASC;
