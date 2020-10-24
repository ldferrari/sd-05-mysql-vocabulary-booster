SELECT
CONCAT(hre.first_name, ' ', hre.last_name) AS 'Nome completo',
DATE_FORMAT(hrh.start_date, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(hrh.end_date, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(DATEDIFF(hrh.end_date, hrh.start_date) / 365, 2) AS 'Anos trabalhados'
FROM hr.job_history AS hrh
INNER JOIN hr.employees as hre
ON hre.employee_id = hrh.employee_id
ORDER BY 1, 4;
