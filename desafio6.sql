SELECT
CONCAT(employee.first_name, ' ', employee.last_name) AS 'Nome completo',
jb.job_title AS 'Cargo',
jbh.start_date AS 'Data de início do cargo',
depart.department_name AS 'Departamento'
FROM hr.employees AS employee
JOIN
hr.job_history AS jbh
ON (jhb.employee_id = emp.employee_id)
JOIN
hr.departments AS depart
ON (jbh.department_id = depart.department_id)
JOIN
hr.jobs AS jb
ON (jbh.job_id = jb.job_id)
ORDER BY
CONCAT(employee.first_name, ' ', employee.last_name) DESC,
jb.job_title ASC;
