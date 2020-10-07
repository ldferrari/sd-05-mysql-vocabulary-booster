SELECT
concat(employees.first_name, ' ', employees.last_name) AS `Nome completo`,
jobs.job_title AS 'Cargo',
job_history.start_date AS `Data de início do cargo`,
departments.department_name AS 'Departamento'
FROM hr.employees
JOIN hr.departments ON hr.departments.department_id = hr.employees.department_id
JOIN hr.jobs ON hr.jobs.job_id = hr.employees.job_id
JOIN hr.job_history ON hr.job_history.job_id = hr.jobs.job_id
ORDER BY `Nome completo` DESC, job_title;
