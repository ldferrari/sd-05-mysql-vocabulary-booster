DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(email VARCHAR(20))
BEGIN
SELECT CONCAT(hre.first_name,' ',hre.last_name) AS 'Nome completo',
hrd.department_name AS 'Departamento',
hrj.job_title AS 'Cargo'
FROM hr.job_history AS hrh
INNER JOIN hr.employees AS hre
ON hrh.employee_id = hre.employee_id
INNER JOIN hr.departments AS hrd
ON hrh.department_id = hrd.department_id
INNER JOIN hr.jobs AS hrj
ON hrh.job_id = hrj.job_id
WHERE hre.EMAIL = email
ORDER BY 2, 3;
END $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
