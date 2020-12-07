SELECT CONCAT(FIRST_NAME, ' ' , LAST_NAME) AS `Nome completo`,
JOB_TITLE AS `Cargo`,
START_DATE AS `Data de início do cargo`,
DEPARTMENT_NAME AS `Departamento`
FROM hr.employees AS E
JOIN hr.job_history AS H ON H.EMPLOYEE_ID = E.EMPLOYEE_ID
JOIN hr.jobs AS J ON J.JOB_ID = H.JOB_ID
JOIN hr.departments AS D ON D.DEPARTMENT_ID = E.DEPARTMENT_ID
ORDER BY 1 DESC, 2;
