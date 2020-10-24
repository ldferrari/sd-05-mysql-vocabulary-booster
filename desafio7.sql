SELECT UCASE(
CONCAT(first_name, '', last_name)) AS 'Nome completo',
job_history.start_date AS 'Data de início',
salary AS 'Salário'
FROM hr.employees
JOIN hr.job_history
ON job_history.employee_id = employees.employee_id
WHERE MONTH(job_history.start_date) BETWEEN 01 AND 03
ORDER BY `Nome completo`, `Data de início`;
