SELECT
concat(first_name, ' ', last_name) AS 'Nome completo',
jobs.job_title AS 'Cargo',
employees.hire_date AS 'Data de início do cargo',
departments.department_name AS 'Departamento'
FROM hr.employees
JOIN hr.departments ON hr.departments.department_id = hr.employees.department_id
JOIN hr.jobs ON hr.jobs.job_id = hr.employees.job_id
ORDER BY 1, 2;
