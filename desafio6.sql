SELECT CONCAT(hre.first_name,' ',hre.last_name) AS 'Nome completo',
hrj.job_title AS 'Cargo',
hrh.start_date AS 'Data de início do cargo',
hrd.department_name AS 'Departamento'
FROM hr.job_history AS hrh
INNER JOIN hr.employees AS hre
ON hrh.employee_id = hre.employee_id
INNER JOIN hr.jobs AS hrj
ON hrh.job_id = hrj.job_id
INNER JOIN hr.departments AS hrd
ON hrh.department_id = hrd.department_id
ORDER BY 1 DESC, 2 ;
