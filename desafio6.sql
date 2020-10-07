SELECT * FROM employees;
SELECT * FROM jobs;

SELECT CONCAT(E.first_name,' ', E.last_name) AS 'Nome completo',
J.job_title AS 'Cargo',
E.hire_date AS 'Data de início do cargo'
FROM hr.employees E
INNER JOIN hr.jobs AS J
ON E.job_id = J.job_id;
