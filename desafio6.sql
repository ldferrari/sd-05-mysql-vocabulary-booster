SELECT CONCAT(a.first_name, ' ', a.last_name) AS 'Nome Completo',
b.job_title AS 'Cargo',
a.hire_date AS 'Data de início do cargo',
c.department_name AS 'Departamento' FROM hr.employees AS a
INNER JOIN hr.jobs AS b ON a.job_id = b.job_id
INNER JOIN hr.departments as c ON a.department_id = c.department_id
ORDER BY CONCAT(a.first_name, ' ', a.last_name) DESC, b.job_title ASC;
