SELECT CONCAT(E.first_name,' ', E.last_name) AS 'Nome completo',
J.job_title AS 'Cargo',
JH.start_date AS 'Data de início do cargo',
D.department_name AS 'Departamento'
FROM hr.employees AS E
-- INNER JOIN hr.jobs AS J
INNER JOIN hr.job_history AS JH
ON JH.employee_id = E.employee_id
INNER JOIN hr.departments AS D
ON JH.department_id = D.department_id
-- INNER JOIN hr.job_history AS JH
INNER JOIN hr.jobs AS J
ON J.job_id = JH.job_id
ORDER BY CONCAT(E.first_name,' ', E.last_name) DESC, J.job_title ASC;
