SELECT UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS `Nome Completo`,
jh.START_DATE AS `Data de início`,
e.SALARY AS `Salário`
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) IN (1, 2, 3)
ORDER BY 1, 2;
