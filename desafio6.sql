SELECT
CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) `Nome completo`,
J.JOB_TITLE Cargo,
JH.START_DATE `Data de início do cargo`,
D.DEPARTMENT_NAME `Departamento`
FROM hr.employees AS E
INNER JOIN hr.jobs AS J
ON J.JOB_ID = E.JOB_ID
INNER JOIN hr.job_history AS JH
ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
INNER JOIN hr.departments AS D
ON JH.DEPARTMENT_ID = D.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
