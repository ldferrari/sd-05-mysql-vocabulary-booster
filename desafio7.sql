SELECT UPPER(CONCAT(a.first_name, ' ', a.last_name)) AS 'Nome Completo',
b.job_title AS 'Cargo',
a.hire_date AS 'Data de início do cargo',
MONTH(a.hire_date) AS 'BLEH',
a.salary AS 'Salário' FROM hr.employees AS a
INNER JOIN hr.jobs AS b ON a.job_id = b.job_id
WHERE MONTH(a.hire_date) IN (1, 02, 03) ORDER BY UPPER(CONCAT(a.first_name, ' ', a.last_name)), a.hire_date;
