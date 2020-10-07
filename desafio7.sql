SELECT
CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) `Nome completo`,
JH.START_DATE `Data de início`,
E.SALARY `Salário`
FROM hr.employees as E
INNER JOIN hr.job_history as JH
ORDER BY `Nome completo`, DATE(`Data de início`);
