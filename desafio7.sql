SELECT 
UCASE(CONCAT(FIRST_NAME,' ', LAST_NAME)) AS `Nome completo`,
hst.START_DATE AS 'Data de início',
SALARY AS 'Salário'
FROM hr.employees AS ep
INNER JOIN hr.job_history AS hst ON ep.EMPLOYEE_ID = hst.EMPLOYEE_ID
WHERE MONTH(hst.START_DATE) IN(01,02,03)
ORDER BY `Nome completo`, hst.START_DATE;
