SELECT
UCASE(CONCAT(employees.first_name, ' ', employees.last_name)) AS `Nome completo`,
job_history.start_date AS `Data de início`,
employees.salary AS `Salário`
FROM hr.job_history
JOIN hr.employees ON hr.employees.employee_id = hr.job_history.employee_id
WHERE MONTH(job_history.start_date) IN (1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
