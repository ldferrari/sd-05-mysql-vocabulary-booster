-- Desempenho superior ao inner join apesar do inner ser menos verboso
SELECT
(
SELECT CONCAT(hre.first_name,' ', hre.last_name) AS 'Nome Completo'
FROM hr.employees AS hre
WHERE hre.employee_id = hrh.employee_id
),
(
SELECT hrj.job_title 
FROM hr.jobs AS hrj 
WHERE hrj.job_id = hrh.job_id
) AS 'Cargo',
hrh.start_date AS 'Data de início do cargo',
(
SELECT hrd.department_name
FROM hr.departments AS hrd
WHERE hrd.department_id = hrh.department_id
) AS 'Departamento'
FROM hr.job_history AS hrh
ORDER BY 1 DESC, 2 ASC;
