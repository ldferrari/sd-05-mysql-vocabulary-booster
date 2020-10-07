SELECT
CONCAT(emp.first_name, ' ', emp.last_name) AS "Nome completo", -- ok
jbs.job_title AS "Cargo",
jbh.start_date AS "Data de início do cargo", -- table job_history
dpr.department_name AS "Departamento" -- department_id
FROM hr.employees AS emp
JOIN
hr.job_history AS jbh
ON (jbh.employee_id = emp.employee_id) -- Conectando o id do employee
JOIN
hr.departments AS dpr
ON (jbh.department_id = dpr.department_id)
JOIN
hr.jobs AS jbs
ON (jbh.job_id = jbs.job_id)
ORDER BY
CONCAT(emp.first_name, ' ', emp.last_name) DESC,
jbs.job_title ASC;
