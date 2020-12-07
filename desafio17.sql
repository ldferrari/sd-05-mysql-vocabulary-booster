SELECT CONCAT(FIRST_NAME, ' ' , LAST_NAME) AS 'Nome completo',
DATE_FORMAT(H.START_DATE, "%d/%m/%Y") AS 'Data de início',
DATE_FORMAT(H.END_DATE, "%d/%m/%Y") AS 'Data de rescisão',
ROUND(DATEDIFF(H.END_DATE, H.START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM hr.employees AS E
JOIN hr.job_history AS H ON H.EMPLOYEE_ID = E.EMPLOYEE_ID
JOIN hr.jobs AS J ON J.JOB_ID = H.JOB_ID
ORDER BY 1, 4;
