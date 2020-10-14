SELECT UPPER(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) ) as 'Nome completo',
JH.START_DATE as 'Data de início', E.SALARY as 'Salário' from hr.job_history AS JH
JOIN hr.employees AS E ON E.EMPLOYEE_ID=JH.EMPLOYEE_ID
WHERE MONTH(JH.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo`, `Data de início`;
