SELECT UPPER(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS 'Nome completo',
jh.START_DATE AS 'Data de início do cargo',
emp.SALARY AS Salário
FROM hr.job_history AS jh
INNER JOIN hr.employees AS emp
ON jh.EMPLOYEE_ID = emp.EMPLOYEE_ID
INNER JOIN hr.jobs AS job
ON jh.JOB_ID = job.JOB_ID
INNER JOIN hr.departments AS dep
ON jh.DEPARTMENT_ID = dep.DEPARTMENT_ID
ORDER BY 1, 2 ASC;
