SELECT CONCAT (FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
jo.JOB_TITLE AS 'Cargo',
jh.START_DATE AS 'Data de início do cargo',
de.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS em
INNER JOIN hr.job_history AS jh
ON em.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN hr.jobs AS jo
ON em.JOB_ID = jo.JOB_ID
INNER JOIN hr.departments AS de
ON em.DEPARTMENT_ID = de.DEPARTMENT_ID
ORDER BY 1 DESC, 2;
