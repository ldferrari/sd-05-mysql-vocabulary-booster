SELECT UPPER(CONCAT(FIRST_NAME, ' ', LAST_NAME)) as 'Nome completo',
START_DATE as 'Data de início',
SALARY as Salário
FROM hr.job_history
INNER JOIN employees
ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
WHERE START_DATE LIKE '_____03___'
or START_DATE LIKE '_____02___'
or START_DATE LIKE '_____01___'
ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME), START_DATE;
