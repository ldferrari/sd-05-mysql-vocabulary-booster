SELECT 
UCASE(CONCAT(FIRST_NAME,' ', LAST_NAME)) AS `Nome completo`,
hist.START_DATE AS 'Data de início',
SALARY AS 'Salário'

FROM hr.employees AS emp
INNER JOIN hr.job_history AS hist ON emp.EMPLOYEE_ID = hist.EMPLOYEE_ID
WHERE MONTH(hist.START_DATE) IN(01,02,03)

ORDER BY `Nome completo` DESC, hist.START_DATE;
