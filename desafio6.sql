-- Referência: https://stackoverflow.com/questions/2366780/how-to-do-an-inner-join-on-multiple-columns
SELECT CONCAT(e.first_name, " ", e.last_name) AS 'Nome completo', 
j.job_title AS 'Cargo',
jh.start_date AS 'Data de início do cargo',
department_name AS 'Departamento'
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh 
ON e.employee_id = jh.employee_id
INNER JOIN hr.jobs AS j
ON j.job_id = jh.job_id
INNER JOIN hr.departments AS d
ON jh.department_id = d.department_id
ORDER BY `Nome Completo` DESC, `Cargo`;
