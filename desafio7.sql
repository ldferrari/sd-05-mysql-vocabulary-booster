SELECT UPPER(CONCAT(E.first_name,' ', E.last_name)) AS 'Nome completo',
JH.start_date AS 'Data de início',
E.salary AS 'Salário'
FROM hr.employees AS E
INNER JOIN hr.job_history AS JH
ON E.employee_id = JH.employee_id
WHERE MONTH(JH.start_date) = 01 OR MONTH(JH.start_date) = 02 OR MONTH(JH.start_date) = 03
ORDER BY UPPER(CONCAT(E.first_name,' ', E.last_name)), JH.start_date;
