-- inner join melhor performance que subquery
SELECT UCASE(CONCAT(hre.first_name,' ',hre.last_name)) AS 'Nome completo',
hrh.start_date AS 'Data de início',
hre.SALARY AS 'Salário'
FROM hr.job_history AS hrh
INNER JOIN hr.employees AS hre
ON hrh.employee_id = hre.employee_id
WHERE MONTH(hrh.start_date) BETWEEN '01' AND '03'
ORDER BY 1, 2;
