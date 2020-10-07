SELECT UCASE(CONCAT(FIRST_NAME," ", LAST_NAME)) AS `Nome completo`, 
START_DATE as "Data de início",
SALARY as 'Salário'
FROM job_history 
INNER JOIN employees ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID  
WHERE SUBSTRING(START_DATE,6,2) BETWEEN 01 AND 03
ORDER BY `Nome completo` ASC, `Data de início` ASC;
