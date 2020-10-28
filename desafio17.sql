SELECT
CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
DATE_FORMAT(jh.start_date, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(jh.end_date, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(DATEDIFF(jh.end_date, jh.start_date) / 365, 2) AS 'Anos trabalhados'
FROM hr.job_history AS jh
INNER JOIN hr.employees as e
ON e.employee_id = jh.employee_id
ORDER BY 1, 4;

-- posicionamento de DATA e ORDER BY por nro de query
-- retirei a nomenclatura por nros da linha 5 pois resultado deu NULL
