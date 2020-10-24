SELECT
CONCAT(first_name, ' ', last_name) AS 'Nome completo',
jobs.job_title AS Cargo,
job_history.start_date AS 'Data de início do cargo',
departments.department_name AS 'Departamento'
FROM hr.employees
JOIN -- talvez eu poderia fazer um único JOIN
hr.job_history
ON job_history.employee_id = employees.employee_id
JOIN
hr.departments
ON departments.department_id = job_history.department_id
JOIN
hr.jobs
ON jobs.job_id = job_history.job_id
ORDER BY
`Nome completo` DESC, Cargo ASC;
