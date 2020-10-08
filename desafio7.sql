SELECT UPPER(CONCAT(E.first_name,' ', E.last_name)) AS 'Nome completo',
JH.start_date AS 'Data de início',
E.salary AS 'Salário'
FROM hr.employees AS E
INNER JOIN hr.job_history AS JH
ON E.employee_id = JH.employee_id
ORDER BY UPPER(CONCAT(E.first_name,' ', E.last_name)), JH.start_date;
