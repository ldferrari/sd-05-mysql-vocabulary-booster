SELECT
CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) `Nome completo`,
JH.START_DATE `Data de início`,
E.SALARY `Salário`
FROM hr.employees as E
INNER JOIN hr.job_history as JH
ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE MONTH(JH.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo`, DATE(`Data de início`);
