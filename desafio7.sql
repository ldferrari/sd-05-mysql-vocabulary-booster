SELECT UPPER(CONCAT(FIRST_NAME, ' ' , LAST_NAME)) AS `Nome completo`,
START_DATE AS `Data de início`,
SALARY AS `Salário`
FROM hr.employees AS E
JOIN hr.job_history AS H ON H.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE MONTH(START_DATE) BETWEEN 1 AND 3
ORDER BY 1, `Data de início`;
